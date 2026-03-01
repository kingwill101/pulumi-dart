/// The sku tier.
enum SkuTier {
  valuePremium("Premium");

  const SkuTier(this.value);
  final String value;

  static SkuTier fromValue(String value) {
    for (final item in SkuTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuTier value: $value');
  }
}

