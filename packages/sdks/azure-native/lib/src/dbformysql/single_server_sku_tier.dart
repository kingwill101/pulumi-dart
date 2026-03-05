/// The tier of the particular SKU, e.g. Basic.
enum SingleServerSkuTier {
  valueBasic("Basic"),
  valueGeneralPurpose("GeneralPurpose"),
  valueMemoryOptimized("MemoryOptimized");

  const SingleServerSkuTier(this.wireValue);
  final String wireValue;

  static SingleServerSkuTier fromValue(String value) {
    for (final item in SingleServerSkuTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SingleServerSkuTier value: $value');
  }
}

