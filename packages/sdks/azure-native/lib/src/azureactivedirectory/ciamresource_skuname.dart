/// The name of the SKU for the tenant.
enum CIAMResourceSKUName {
  valueStandard("Standard"),
  valuePremiumP1("PremiumP1"),
  valuePremiumP2("PremiumP2");

  const CIAMResourceSKUName(this.wireValue);
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
