enum GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigSearchAddOnsItem {
  searchAddOnUnspecified("SEARCH_ADD_ON_UNSPECIFIED"),
  searchAddOnLlm("SEARCH_ADD_ON_LLM");

  const GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigSearchAddOnsItem(this.value);
  final String value;

  static GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigSearchAddOnsItem fromValue(String value) {
    for (final item in GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigSearchAddOnsItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigSearchAddOnsItem value: $value');
  }
}

