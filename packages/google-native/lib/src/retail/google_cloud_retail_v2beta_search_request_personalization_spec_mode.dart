/// Defaults to Mode.AUTO.
enum GoogleCloudRetailV2betaSearchRequestPersonalizationSpecMode {
  modeUnspecified("MODE_UNSPECIFIED"),
  auto("AUTO"),
  disabled("DISABLED");

  const GoogleCloudRetailV2betaSearchRequestPersonalizationSpecMode(this.value);
  final String value;

  static GoogleCloudRetailV2betaSearchRequestPersonalizationSpecMode fromValue(String value) {
    for (final item in GoogleCloudRetailV2betaSearchRequestPersonalizationSpecMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudRetailV2betaSearchRequestPersonalizationSpecMode value: $value');
  }
}

