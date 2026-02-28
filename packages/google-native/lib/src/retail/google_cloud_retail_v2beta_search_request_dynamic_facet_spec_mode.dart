/// Mode of the DynamicFacet feature. Defaults to Mode.DISABLED if it's unset.
enum GoogleCloudRetailV2betaSearchRequestDynamicFacetSpecMode {
  modeUnspecified("MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  enabled("ENABLED");

  const GoogleCloudRetailV2betaSearchRequestDynamicFacetSpecMode(this.value);
  final String value;

  static GoogleCloudRetailV2betaSearchRequestDynamicFacetSpecMode fromValue(String value) {
    for (final item in GoogleCloudRetailV2betaSearchRequestDynamicFacetSpecMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudRetailV2betaSearchRequestDynamicFacetSpecMode value: $value');
  }
}

