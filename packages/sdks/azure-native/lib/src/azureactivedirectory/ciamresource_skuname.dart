import 'package:pulumi/pulumi.dart' as pulumi;

/// The name of the SKU for the tenant.
enum CIAMResourceSKUName implements pulumi.PulumiEnum<String> {
  valueStandard("Standard"),
  valuePremiumP1("PremiumP1"),
  valuePremiumP2("PremiumP2");

  const CIAMResourceSKUName(this.wireValue);
  @override
  final String wireValue;

  static CIAMResourceSKUName fromValue(String value) {
    for (final item in CIAMResourceSKUName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CIAMResourceSKUName value: $value');
  }
}
