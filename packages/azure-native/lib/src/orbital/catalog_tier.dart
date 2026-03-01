/// Tier of the catalog. This cannot be changed after the catalog is created. If not provided, defaults to Basic.
enum CatalogTier {
  basic("Basic");

  const CatalogTier(this.value);
  final String value;

  static CatalogTier fromValue(String value) {
    for (final item in CatalogTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CatalogTier value: $value');
  }
}

