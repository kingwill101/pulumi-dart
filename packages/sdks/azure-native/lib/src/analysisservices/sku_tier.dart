/// The name of the Azure pricing tier to which the SKU applies.
enum SkuTier {
  valueDevelopment("Development"),
  valueBasic("Basic"),
  valueStandard("Standard");

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

