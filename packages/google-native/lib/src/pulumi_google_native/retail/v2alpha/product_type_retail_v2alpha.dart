/// Immutable. The type of the product. Default to Catalog.product_level_config.ingestion_product_type if unset.
enum ProductTypeRetailV2alpha {
  typeUnspecified("TYPE_UNSPECIFIED"),
  primary("PRIMARY"),
  variant("VARIANT"),
  collection("COLLECTION");

  const ProductTypeRetailV2alpha(this.value);
  final String value;

  static ProductTypeRetailV2alpha fromValue(String value) {
    for (final item in ProductTypeRetailV2alpha.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProductTypeRetailV2alpha value: $value');
  }
}
