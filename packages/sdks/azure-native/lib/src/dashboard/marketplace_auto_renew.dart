/// The AutoRenew setting of the Enterprise subscription
enum MarketplaceAutoRenew {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const MarketplaceAutoRenew(this.wireValue);
  final String wireValue;

  static MarketplaceAutoRenew fromValue(String value) {
    for (final item in MarketplaceAutoRenew.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MarketplaceAutoRenew value: $value');
  }
}
