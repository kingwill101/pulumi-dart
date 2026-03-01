/// Defaults to Mode.AUTO.
enum GoogleCloudRetailV2alphaSearchRequestPersonalizationSpecMode {
  modeUnspecified("MODE_UNSPECIFIED"),
  auto("AUTO"),
  disabled("DISABLED");

  const GoogleCloudRetailV2alphaSearchRequestPersonalizationSpecMode(
    this.value,
  );
  final String value;

  static GoogleCloudRetailV2alphaSearchRequestPersonalizationSpecMode fromValue(
    String value,
  ) {
    for (final item
        in GoogleCloudRetailV2alphaSearchRequestPersonalizationSpecMode
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudRetailV2alphaSearchRequestPersonalizationSpecMode value: $value',
    );
  }
}
