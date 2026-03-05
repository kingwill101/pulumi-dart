/// The type of action.
enum AzureFirewallNatRCActionType {
  valueSnat("Snat"),
  valueDnat("Dnat");

  const AzureFirewallNatRCActionType(this.wireValue);
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

