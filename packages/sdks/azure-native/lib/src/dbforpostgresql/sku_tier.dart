import 'package:pulumi/pulumi.dart' as pulumi;

/// Tier of the compute assigned to a server.
enum SkuTier implements pulumi.PulumiEnum<String> {
  burstable("Burstable"),
  generalPurpose("GeneralPurpose"),
  memoryOptimized("MemoryOptimized");

  const SkuTier(this.wireValue);
  @override
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
