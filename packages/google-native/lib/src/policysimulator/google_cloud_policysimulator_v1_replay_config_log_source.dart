/// The logs to use as input for the Replay.
enum GoogleCloudPolicysimulatorV1ReplayConfigLogSource {
  logSourceUnspecified("LOG_SOURCE_UNSPECIFIED"),
  recentAccesses("RECENT_ACCESSES");

  const GoogleCloudPolicysimulatorV1ReplayConfigLogSource(this.value);
  final String value;

  static GoogleCloudPolicysimulatorV1ReplayConfigLogSource fromValue(
    String value,
  ) {
    for (final item
        in GoogleCloudPolicysimulatorV1ReplayConfigLogSource.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudPolicysimulatorV1ReplayConfigLogSource value: $value',
    );
  }
}
