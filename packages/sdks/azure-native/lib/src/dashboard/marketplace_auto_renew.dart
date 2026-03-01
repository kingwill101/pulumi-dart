/// The AutoRenew setting of the Enterprise subscription
enum MarketplaceAutoRenew {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const MarketplaceAutoRenew(this.value);
  final String value;

  static MarketplaceAutoRenew fromValue(String value) {
    for (final item in MarketplaceAutoRenew.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MarketplaceAutoRenew value: $value');
  }
}

