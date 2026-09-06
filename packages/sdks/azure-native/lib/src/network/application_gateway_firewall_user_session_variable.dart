import 'package:pulumi/pulumi.dart' as pulumi;

/// User Session clause variable.
enum ApplicationGatewayFirewallUserSessionVariable implements pulumi.PulumiEnum<String> {
  valueClientAddr("ClientAddr"),
  valueGeoLocation("GeoLocation"),
  valueNone("None");

  const ApplicationGatewayFirewallUserSessionVariable(this.wireValue);
  @override
  final String wireValue;

  static ApplicationGatewayFirewallUserSessionVariable fromValue(String value) {
    for (final item in ApplicationGatewayFirewallUserSessionVariable.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGatewayFirewallUserSessionVariable value: $value');
  }
}
