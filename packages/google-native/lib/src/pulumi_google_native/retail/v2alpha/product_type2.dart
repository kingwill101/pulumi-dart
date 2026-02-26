/// Immutable. The type of the product. Default to Catalog.product_level_config.ingestion_product_type if unset.
enum ProductType2 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  primary("PRIMARY"),
  variant("VARIANT"),
  collection("COLLECTION");

  const ProductType2(this.value);
  final String value;

  static ProductType2 fromValue(String value) {
    for (final item in ProductType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProductType2 value: $value');
  }
}
