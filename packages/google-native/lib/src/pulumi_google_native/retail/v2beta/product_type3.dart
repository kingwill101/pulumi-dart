/// Immutable. The type of the product. Default to Catalog.product_level_config.ingestion_product_type if unset.
enum ProductType3 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  primary("PRIMARY"),
  variant("VARIANT"),
  collection("COLLECTION");

  const ProductType3(this.value);
  final String value;

  static ProductType3 fromValue(String value) {
    for (final item in ProductType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProductType3 value: $value');
  }
}
