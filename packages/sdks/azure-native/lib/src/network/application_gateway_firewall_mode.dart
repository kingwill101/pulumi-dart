/// Web application firewall mode.
enum ApplicationGatewayFirewallMode {
  valueDetection("Detection"),
  valuePrevention("Prevention");

  const ApplicationGatewayFirewallMode(this.wireValue);
  final String wireValue;

  static ApplicationGatewayFirewallMode fromValue(String value) {
    for (final item in ApplicationGatewayFirewallMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGatewayFirewallMode value: $value');
  }
}
