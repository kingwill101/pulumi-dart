import 'package:pulumi/pulumi.dart' as pulumi;

/// Web application firewall mode.
enum ApplicationGatewayFirewallMode implements pulumi.PulumiEnum<String> {
  valueDetection("Detection"),
  valuePrevention("Prevention");

  const ApplicationGatewayFirewallMode(this.wireValue);
  @override
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
