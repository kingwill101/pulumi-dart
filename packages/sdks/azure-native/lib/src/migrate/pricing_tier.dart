/// Gets or sets pricing tier.
enum PricingTier {
  standard("Standard"),
  free("Free");

  const PricingTier(this.value);
  final String value;

  static PricingTier fromValue(String value) {
    for (final item in PricingTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PricingTier value: $value');
  }
}

