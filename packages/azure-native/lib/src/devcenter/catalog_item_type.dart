/// Indicates catalog item types.
enum CatalogItemType {
  valueEnvironmentDefinition("EnvironmentDefinition");

  const CatalogItemType(this.value);
  final String value;

  static CatalogItemType fromValue(String value) {
    for (final item in CatalogItemType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CatalogItemType value: $value');
  }
}

