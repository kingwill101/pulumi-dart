/// The tier of the tenant.
enum CIAMResourceSKUTier {
  valueA0("A0");

  const CIAMResourceSKUTier(this.value);
  final String value;

  static CIAMResourceSKUTier fromValue(String value) {
    for (final item in CIAMResourceSKUTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CIAMResourceSKUTier value: $value');
  }
}

