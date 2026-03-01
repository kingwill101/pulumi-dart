/// Tier of the compute assigned to a server.
enum SkuTier {
  burstable("Burstable"),
  generalPurpose("GeneralPurpose"),
  memoryOptimized("MemoryOptimized");

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

