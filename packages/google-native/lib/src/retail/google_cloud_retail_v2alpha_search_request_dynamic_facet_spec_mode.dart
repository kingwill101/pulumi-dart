/// Mode of the DynamicFacet feature. Defaults to Mode.DISABLED if it's unset.
enum GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpecMode {
  modeUnspecified("MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  enabled("ENABLED");

  const GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpecMode(this.value);
  final String value;

  static GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpecMode fromValue(
      String value) {
    for (final item
        in GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpecMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpecMode value: $value');
  }
}
