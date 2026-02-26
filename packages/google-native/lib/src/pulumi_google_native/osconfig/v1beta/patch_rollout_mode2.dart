/// Mode of the patch rollout.
enum PatchRolloutMode2 {
  modeUnspecified("MODE_UNSPECIFIED"),
  zoneByZone("ZONE_BY_ZONE"),
  concurrentZones("CONCURRENT_ZONES");

  const PatchRolloutMode2(this.value);
  final String value;

  static PatchRolloutMode2 fromValue(String value) {
    for (final item in PatchRolloutMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PatchRolloutMode2 value: $value');
  }
}
