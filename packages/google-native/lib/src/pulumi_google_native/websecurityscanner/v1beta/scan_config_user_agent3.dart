/// The user agent used during scanning.
enum ScanConfigUserAgent3 {
  userAgentUnspecified("USER_AGENT_UNSPECIFIED"),
  chromeLinux("CHROME_LINUX"),
  chromeAndroid("CHROME_ANDROID"),
  safariIphone("SAFARI_IPHONE");

  const ScanConfigUserAgent3(this.value);
  final String value;

  static ScanConfigUserAgent3 fromValue(String value) {
    for (final item in ScanConfigUserAgent3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScanConfigUserAgent3 value: $value');
  }
}
