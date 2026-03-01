/// The mode of the policy.
enum WebApplicationFirewallMode {
  valuePrevention("Prevention"),
  valueDetection("Detection");

  const WebApplicationFirewallMode(this.value);
  final String value;

  static WebApplicationFirewallMode fromValue(String value) {
    for (final item in WebApplicationFirewallMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebApplicationFirewallMode value: $value');
  }
}

