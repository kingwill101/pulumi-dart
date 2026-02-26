/// The user agent used during scanning.
enum ScanConfigUserAgent2 {
  userAgentUnspecified("USER_AGENT_UNSPECIFIED"),
  chromeLinux("CHROME_LINUX"),
  chromeAndroid("CHROME_ANDROID"),
  safariIphone("SAFARI_IPHONE");

  const ScanConfigUserAgent2(this.value);
  final String value;

  static ScanConfigUserAgent2 fromValue(String value) {
    for (final item in ScanConfigUserAgent2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScanConfigUserAgent2 value: $value');
  }
}
