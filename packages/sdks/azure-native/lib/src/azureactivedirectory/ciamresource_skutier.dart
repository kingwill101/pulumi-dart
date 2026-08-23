/// The tier of the tenant.
enum CIAMResourceSKUTier {
  valueA0("A0");

  const CIAMResourceSKUTier(this.wireValue);
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
