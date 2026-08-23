/// The tier of the particular SKU, e.g. GeneralPurpose.
enum ServerSkuTier {
  valueBurstable("Burstable"),
  valueGeneralPurpose("GeneralPurpose"),
  valueMemoryOptimized("MemoryOptimized");

  const ServerSkuTier(this.wireValue);
  final String wireValue;

  static ServerSkuTier fromValue(String value) {
    for (final item in ServerSkuTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerSkuTier value: $value');
  }
}
