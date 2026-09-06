import 'package:pulumi/pulumi.dart' as pulumi;

/// The name of the Azure pricing tier to which the SKU applies.
enum SkuTier implements pulumi.PulumiEnum<String> {
  valueDevelopment("Development"),
  valueBasic("Basic"),
  valueStandard("Standard");

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
