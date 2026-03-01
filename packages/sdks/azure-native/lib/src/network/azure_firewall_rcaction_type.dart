/// The type of action.
enum AzureFirewallRCActionType {
  valueAllow("Allow"),
  valueDeny("Deny");

  const AzureFirewallRCActionType(this.value);
  final String value;

  static AzureFirewallRCActionType fromValue(String value) {
    for (final item in AzureFirewallRCActionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureFirewallRCActionType value: $value');
  }
}

