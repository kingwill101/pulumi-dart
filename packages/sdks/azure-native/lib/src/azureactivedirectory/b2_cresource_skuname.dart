import 'package:pulumi/pulumi.dart' as pulumi;

/// The name of the SKU for the tenant.
enum B2CResourceSKUName implements pulumi.PulumiEnum<String> {
  valueStandard("Standard"),
  valuePremiumP1("PremiumP1"),
  valuePremiumP2("PremiumP2");

  const B2CResourceSKUName(this.wireValue);
  @override
  final String wireValue;

  static B2CResourceSKUName fromValue(String value) {
    for (final item in B2CResourceSKUName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown B2CResourceSKUName value: $value');
  }
}
