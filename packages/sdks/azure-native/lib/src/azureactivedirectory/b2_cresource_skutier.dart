import 'package:pulumi/pulumi.dart' as pulumi;

/// The tier of the tenant.
enum B2CResourceSKUTier implements pulumi.PulumiEnum<String> {
  valueA0("A0");

  const B2CResourceSKUTier(this.wireValue);
  @override
  final String wireValue;

  static B2CResourceSKUTier fromValue(String value) {
    for (final item in B2CResourceSKUTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown B2CResourceSKUTier value: $value');
  }
}
