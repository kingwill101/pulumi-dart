import 'package:pulumi/pulumi.dart' as pulumi;

/// The tier of the particular SKU, e.g. Basic.
enum SingleServerSkuTier implements pulumi.PulumiEnum<String> {
  valueBasic("Basic"),
  valueGeneralPurpose("GeneralPurpose"),
  valueMemoryOptimized("MemoryOptimized");

  const SingleServerSkuTier(this.wireValue);
  @override
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
