/// Defaults to Mode.AUTO.
enum GoogleCloudRetailV2SearchRequestPersonalizationSpecMode {
  modeUnspecified("MODE_UNSPECIFIED"),
  auto("AUTO"),
  disabled("DISABLED");

  const GoogleCloudRetailV2SearchRequestPersonalizationSpecMode(this.value);
  final String value;

  static GoogleCloudRetailV2SearchRequestPersonalizationSpecMode fromValue(String value) {
    for (final item in GoogleCloudRetailV2SearchRequestPersonalizationSpecMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudRetailV2SearchRequestPersonalizationSpecMode value: $value');
  }
}

