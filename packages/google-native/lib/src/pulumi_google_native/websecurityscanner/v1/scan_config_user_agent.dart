/// The user agent used during scanning.
enum ScanConfigUserAgent {
  userAgentUnspecified("USER_AGENT_UNSPECIFIED"),
  chromeLinux("CHROME_LINUX"),
  chromeAndroid("CHROME_ANDROID"),
  safariIphone("SAFARI_IPHONE");

  const ScanConfigUserAgent(this.value);
  final String value;

  static ScanConfigUserAgent fromValue(String value) {
    for (final item in ScanConfigUserAgent.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScanConfigUserAgent value: $value');
  }
}
