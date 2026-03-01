/// Gets or sets Azure Pricing Tier - Free, Basic, etc.
enum AzurePricingTier {
  standard("Standard"),
  basic("Basic");

  const AzurePricingTier(this.value);
  final String value;

  static AzurePricingTier fromValue(String value) {
    for (final item in AzurePricingTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzurePricingTier value: $value');
  }
}

