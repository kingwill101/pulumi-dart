/// Web application firewall mode.
enum ApplicationGatewayFirewallMode {
  valueDetection("Detection"),
  valuePrevention("Prevention");

  const ApplicationGatewayFirewallMode(this.value);
  final String value;

  static ApplicationGatewayFirewallMode fromValue(String value) {
    for (final item in ApplicationGatewayFirewallMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGatewayFirewallMode value: $value');
  }
}

