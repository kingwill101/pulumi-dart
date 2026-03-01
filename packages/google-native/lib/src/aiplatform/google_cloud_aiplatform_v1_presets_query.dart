/// Preset option controlling parameters for speed-precision trade-off when querying for examples. If omitted, defaults to `PRECISE`.
enum GoogleCloudAiplatformV1PresetsQuery {
  precise("PRECISE"),
  fast("FAST");

  const GoogleCloudAiplatformV1PresetsQuery(this.value);
  final String value;

  static GoogleCloudAiplatformV1PresetsQuery fromValue(String value) {
    for (final item in GoogleCloudAiplatformV1PresetsQuery.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudAiplatformV1PresetsQuery value: $value',
    );
  }
}
