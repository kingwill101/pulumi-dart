/// The tier of the tenant.
enum B2CResourceSKUTier {
  valueA0("A0");

  const B2CResourceSKUTier(this.value);
  final String value;

  static B2CResourceSKUTier fromValue(String value) {
    for (final item in B2CResourceSKUTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown B2CResourceSKUTier value: $value');
  }
}

