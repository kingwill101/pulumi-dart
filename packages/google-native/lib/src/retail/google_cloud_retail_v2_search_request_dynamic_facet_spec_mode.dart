/// Mode of the DynamicFacet feature. Defaults to Mode.DISABLED if it's unset.
enum GoogleCloudRetailV2SearchRequestDynamicFacetSpecMode {
  modeUnspecified("MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  enabled("ENABLED");

  const GoogleCloudRetailV2SearchRequestDynamicFacetSpecMode(this.value);
  final String value;

  static GoogleCloudRetailV2SearchRequestDynamicFacetSpecMode fromValue(String value) {
    for (final item in GoogleCloudRetailV2SearchRequestDynamicFacetSpecMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudRetailV2SearchRequestDynamicFacetSpecMode value: $value');
  }
}

