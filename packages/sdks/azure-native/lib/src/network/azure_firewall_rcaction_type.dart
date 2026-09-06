import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of action.
enum AzureFirewallRCActionType implements pulumi.PulumiEnum<String> {
  valueAllow("Allow"),
  valueDeny("Deny");

  const AzureFirewallRCActionType(this.wireValue);
  @override
  final String wireValue;

  static AzureFirewallRCActionType fromValue(String value) {
    for (final item in AzureFirewallRCActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureFirewallRCActionType value: $value');
  }
}
