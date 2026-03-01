/// The name of the Azure pricing tier to which the SKU applies.
enum RpSkuTier {
  fabric("Fabric");

  const RpSkuTier(this.value);
  final String value;

  static RpSkuTier fromValue(String value) {
    for (final item in RpSkuTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RpSkuTier value: $value');
  }
}

