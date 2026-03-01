/// The tier of the particular SKU, e.g. Basic.
enum SingleServerSkuTier {
  valueBasic("Basic"),
  valueGeneralPurpose("GeneralPurpose"),
  valueMemoryOptimized("MemoryOptimized");

  const SingleServerSkuTier(this.value);
  final String value;

  static SingleServerSkuTier fromValue(String value) {
    for (final item in SingleServerSkuTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SingleServerSkuTier value: $value');
  }
}

