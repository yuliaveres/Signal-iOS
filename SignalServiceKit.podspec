#
# Be sure to run `pod lib lint SignalServiceKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SignalServiceKit"
  s.version          = "0.9.0"
  s.summary          = "An Objective-C library for communicating with the Signal messaging service."

  s.description      = <<-DESC
An Objective-C library for communicating with the Signal messaging service.
  DESC

  s.homepage         = "https://github.com/WhisperSystems/SignalServiceKit"
  s.license          = 'GPLv3'
  s.author           = { "Frederic Jacobs" => "github@fredericjacobs.com" }
  s.source           = { :git => "https://github.com/WhisperSystems/SignalServiceKit.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/FredericJacobs'

  s.platform     = :ios, '8.0'
  #s.ios.deployment_target = '8.0'
  #s.osx.deployment_target = '10.9'
  s.requires_arc = true
  s.source_files = 'SignalServiceKit/src/**/*.{h,m,mm}'

  s.resources = ['SignalServiceKit/src/Security/PinningCertificate/textsecure.cer',
                 'SignalServiceKit/src/Security/PinningCertificate/GIAG2.crt']
  s.prefix_header_file = 'SignalServiceKit/src/TSPrefix.h'
  s.xcconfig = { 'OTHER_CFLAGS' => '$(inherited) -DSQLITE_HAS_CODEC' }

  s.dependency '25519'
  s.dependency 'CocoaLumberjack'
  s.dependency 'AFNetworking'
  s.dependency 'AxolotlKit'
  s.dependency 'Mantle'
  s.dependency 'YapDatabase'
  s.dependency 'SocketRocket'
  s.dependency 'libPhoneNumber-iOS'
  s.dependency 'OpenSSL'
  s.dependency 'SAMKeychain'
  s.dependency 'TwistedOakCollapsingFutures'
  s.dependency 'Reachability'
end
