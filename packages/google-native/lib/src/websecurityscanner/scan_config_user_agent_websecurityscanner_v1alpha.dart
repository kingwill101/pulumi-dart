/// The user agent used during scanning.
enum ScanConfigUserAgentWebsecurityscannerV1alpha {
  userAgentUnspecified("USER_AGENT_UNSPECIFIED"),
  chromeLinux("CHROME_LINUX"),
  chromeAndroid("CHROME_ANDROID"),
  safariIphone("SAFARI_IPHONE");

  const ScanConfigUserAgentWebsecurityscannerV1alpha(this.value);
  final String value;

  static ScanConfigUserAgentWebsecurityscannerV1alpha fromValue(String value) {
    for (final item in ScanConfigUserAgentWebsecurityscannerV1alpha.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ScanConfigUserAgentWebsecurityscannerV1alpha value: $value');
  }
}
