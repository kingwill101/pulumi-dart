import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of action.
enum AzureFirewallNatRCActionType implements pulumi.PulumiEnum<String> {
  valueSnat("Snat"),
  valueDnat("Dnat");

  const AzureFirewallNatRCActionType(this.wireValue);
  @override
  final String wireValue;

  static AzureFirewallNatRCActionType fromValue(String value) {
    for (final item in AzureFirewallNatRCActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureFirewallNatRCActionType value: $value');
  }
}
