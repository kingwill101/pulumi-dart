/// The name of the SKU for the tenant.
enum CIAMResourceSKUName {
  valueStandard("Standard"),
  valuePremiumP1("PremiumP1"),
  valuePremiumP2("PremiumP2");

  const CIAMResourceSKUName(this.value);
  final String value;

  static CIAMResourceSKUName fromValue(String value) {
    for (final item in CIAMResourceSKUName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CIAMResourceSKUName value: $value');
  }
}

