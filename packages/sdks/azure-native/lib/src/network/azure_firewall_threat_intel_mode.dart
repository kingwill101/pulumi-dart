import 'package:pulumi/pulumi.dart' as pulumi;

/// The operation mode for Threat Intelligence.
enum AzureFirewallThreatIntelMode implements pulumi.PulumiEnum<String> {
  valueAlert("Alert"),
  valueDeny("Deny"),
  valueOff("Off");

  const AzureFirewallThreatIntelMode(this.wireValue);
  @override
  final String wireValue;

  static AzureFirewallThreatIntelMode fromValue(String value) {
    for (final item in AzureFirewallThreatIntelMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureFirewallThreatIntelMode value: $value');
  }
}
