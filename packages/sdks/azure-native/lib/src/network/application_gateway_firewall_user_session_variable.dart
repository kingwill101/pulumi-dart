/// User Session clause variable.
enum ApplicationGatewayFirewallUserSessionVariable {
  valueClientAddr("ClientAddr"),
  valueGeoLocation("GeoLocation"),
  valueNone("None");

  const ApplicationGatewayFirewallUserSessionVariable(this.wireValue);
  final String wireValue;

  static ApplicationGatewayFirewallUserSessionVariable fromValue(String value) {
    for (final item in ApplicationGatewayFirewallUserSessionVariable.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ApplicationGatewayFirewallUserSessionVariable value: $value',
    );
  }
}
