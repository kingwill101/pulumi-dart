import 'package:pulumi/pulumi.dart' as pulumi;

/// The sku tier.
enum SkuTier implements pulumi.PulumiEnum<String> {
  valuePremium("Premium");

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
