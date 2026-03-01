/// The name of the SKU for the tenant.
enum B2CResourceSKUName {
  valueStandard("Standard"),
  valuePremiumP1("PremiumP1"),
  valuePremiumP2("PremiumP2");

  const B2CResourceSKUName(this.value);
  final String value;

  static B2CResourceSKUName fromValue(String value) {
    for (final item in B2CResourceSKUName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown B2CResourceSKUName value: $value');
  }
}

