import 'package:pulumi/pulumi.dart' as pulumi;

/// The tier of the particular SKU, e.g. GeneralPurpose.
enum ServerSkuTier implements pulumi.PulumiEnum<String> {
  valueBurstable("Burstable"),
  valueGeneralPurpose("GeneralPurpose"),
  valueMemoryOptimized("MemoryOptimized");

  const ServerSkuTier(this.wireValue);
  @override
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
