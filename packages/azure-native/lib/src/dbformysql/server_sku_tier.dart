/// The tier of the particular SKU, e.g. GeneralPurpose.
enum ServerSkuTier {
  valueBurstable("Burstable"),
  valueGeneralPurpose("GeneralPurpose"),
  valueMemoryOptimized("MemoryOptimized");

  const ServerSkuTier(this.value);
  final String value;

  static ServerSkuTier fromValue(String value) {
    for (final item in ServerSkuTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerSkuTier value: $value');
  }
}

