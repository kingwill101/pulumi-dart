/// The type of action.
enum AzureFirewallNatRCActionType {
  valueSnat("Snat"),
  valueDnat("Dnat");

  const AzureFirewallNatRCActionType(this.value);
  final String value;

  static AzureFirewallNatRCActionType fromValue(String value) {
    for (final item in AzureFirewallNatRCActionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureFirewallNatRCActionType value: $value');
  }
}

