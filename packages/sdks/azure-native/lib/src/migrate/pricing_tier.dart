/// Gets or sets pricing tier.
enum PricingTier {
  standard("Standard"),
  free("Free");

  const PricingTier(this.wireValue);
  final String wireValue;

  static PricingTier fromValue(String value) {
    for (final item in PricingTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PricingTier value: $value');
  }
}
