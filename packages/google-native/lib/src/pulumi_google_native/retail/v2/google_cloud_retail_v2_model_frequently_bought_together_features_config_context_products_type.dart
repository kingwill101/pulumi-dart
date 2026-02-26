/// Optional. Specifies the context of the model when it is used in predict requests. Can only be set for the `frequently-bought-together` type. If it isn't specified, it defaults to MULTIPLE_CONTEXT_PRODUCTS.
enum GoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfigContextProductsType {
  contextProductsTypeUnspecified("CONTEXT_PRODUCTS_TYPE_UNSPECIFIED"),
  singleContextProduct("SINGLE_CONTEXT_PRODUCT"),
  multipleContextProducts("MULTIPLE_CONTEXT_PRODUCTS");

  const GoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfigContextProductsType(
      this.value);
  final String value;

  static GoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfigContextProductsType
      fromValue(String value) {
    for (final item
        in GoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfigContextProductsType
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfigContextProductsType value: $value');
  }
}
