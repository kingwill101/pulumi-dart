import 'package:pulumi/pulumi.dart' as pulumi;

/// The tier of the tenant.
enum CIAMResourceSKUTier implements pulumi.PulumiEnum<String> {
  valueA0("A0");

  const CIAMResourceSKUTier(this.wireValue);
  @override
  final String wireValue;

  static CIAMResourceSKUTier fromValue(String value) {
    for (final item in CIAMResourceSKUTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CIAMResourceSKUTier value: $value');
  }
}
