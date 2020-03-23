Pod::Spec.new do |s|
  s.name             = 'ZumoKit'
  s.version          = '1.5.0-beta.2'
  s.summary          = 'ZumoKit is a Wallet as a Service SDK'
  s.homepage         = 'https://developers.zumo.money/docs/installation/ios.html'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.authors          = { 'Zumo' => 'hello@zumo.money' }
  s.source           = { :git => 'https://github.com/zumo/zumokit-ios.git', :tag => "#{s.version}" }
  s.platform         = :ios
  s.ios.deployment_target = '10.0'
  s.source_files = [
    'ZumoKit/Classes/**/*',
    'ZumoKit/NativeLibs/universal/include/**/*'
  ]
  s.preserve_paths = "ZumoKit/NativeLibs/universal/include/**/*"
  s.public_header_files = [
    'ZumoKit/Classes/Public/*.h',
    'ZumoKit/Classes/Bridge/ObjC/**/*.h'
  ]
  s.private_header_files = [
    'ZumoKit/Classes/Bridge/ObjC/ZKZumoCore.h',
    'ZumoKit/Classes/Bridge/ObjC/ZKHttpCallback.h',
    'ZumoKit/Classes/Bridge/ObjC/ZKHttpImpl.h',
    'ZumoKit/Classes/Bridge/ObjC/ZKWebSocketImpl.h',
    'ZumoKit/Classes/Bridge/ObjC/ZKWebSocketListener.h'
  ]
  s.vendored_libraries = 'ZumoKit/NativeLibs/universal/**/*.a'
  s.framework = 'Foundation'
  s.library = 'c++'
  s.dependency 'SocketRocket', '~> 0.4.0'
  s.pod_target_xcconfig = {
    'HEADER_SEARCH_PATHS' => '$(inherited) "$(PODS_ROOT)/ZumoKit/NativeLibs/universal/include"',
    'OTHER_CFLAGS' => '-fmodules -fcxx-modules',
    'CLANG_CXX_LANGUAGE_STANDARD' => 'gnu++14',
    'CLANG_CXX_LIBRARY' => 'libc++'
  }
end
