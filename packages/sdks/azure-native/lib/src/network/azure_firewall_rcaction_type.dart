/// The type of action.
enum AzureFirewallRCActionType {
  valueAllow("Allow"),
  valueDeny("Deny");

  const AzureFirewallRCActionType(this.wireValue);
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

