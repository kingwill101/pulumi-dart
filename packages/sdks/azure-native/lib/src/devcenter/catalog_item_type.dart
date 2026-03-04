/// Indicates catalog item types.
enum CatalogItemType {
  valueEnvironmentDefinition("EnvironmentDefinition");

  const CatalogItemType(this.wireValue);
  final String wireValue;

  static CatalogItemType fromValue(String value) {
    for (final item in CatalogItemType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CatalogItemType value: $value');
  }
}
