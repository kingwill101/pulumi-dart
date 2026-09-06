import 'package:pulumi/pulumi.dart' as pulumi;

/// The tier of the particular SKU, e.g. Basic.
enum SkuTier implements pulumi.PulumiEnum<String> {
  valueBasic("Basic"),
  valueGeneralPurpose("GeneralPurpose"),
  valueMemoryOptimized("MemoryOptimized");

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
