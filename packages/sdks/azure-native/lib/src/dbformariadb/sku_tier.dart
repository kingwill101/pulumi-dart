/// The tier of the particular SKU, e.g. Basic.
enum SkuTier {
  valueBasic("Basic"),
  valueGeneralPurpose("GeneralPurpose"),
  valueMemoryOptimized("MemoryOptimized");

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

