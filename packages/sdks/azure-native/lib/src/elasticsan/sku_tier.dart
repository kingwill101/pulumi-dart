/// The sku tier.
enum SkuTier {
  valuePremium("Premium");

  const SkuTier(this.wireValue);
  final String wireValue;

  static SkuTier fromValue(String value) {
    for (final item in SkuTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuTier value: $value');
  }
}
