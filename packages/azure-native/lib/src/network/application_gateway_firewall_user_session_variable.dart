/// User Session clause variable.
enum ApplicationGatewayFirewallUserSessionVariable {
  valueClientAddr("ClientAddr"),
  valueGeoLocation("GeoLocation"),
  valueNone("None");

  const ApplicationGatewayFirewallUserSessionVariable(this.value);
  final String value;

  static ApplicationGatewayFirewallUserSessionVariable fromValue(String value) {
    for (final item in ApplicationGatewayFirewallUserSessionVariable.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGatewayFirewallUserSessionVariable value: $value');
  }
}

