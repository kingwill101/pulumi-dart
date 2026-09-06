import 'package:pulumi/pulumi.dart' as pulumi;

/// The name of the Azure pricing tier to which the SKU applies.
enum RpSkuTier implements pulumi.PulumiEnum<String> {
  fabric("Fabric");

  const RpSkuTier(this.wireValue);
  @override
  final String wireValue;

  static RpSkuTier fromValue(String value) {
    for (final item in RpSkuTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RpSkuTier value: $value');
  }
}
