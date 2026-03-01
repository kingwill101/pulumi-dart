/// The logs to use as input for the Replay.
enum GoogleCloudPolicysimulatorV1betaReplayConfigLogSource {
  logSourceUnspecified("LOG_SOURCE_UNSPECIFIED"),
  recentAccesses("RECENT_ACCESSES");

  const GoogleCloudPolicysimulatorV1betaReplayConfigLogSource(this.value);
  final String value;

  static GoogleCloudPolicysimulatorV1betaReplayConfigLogSource fromValue(
    String value,
  ) {
    for (final item
        in GoogleCloudPolicysimulatorV1betaReplayConfigLogSource.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudPolicysimulatorV1betaReplayConfigLogSource value: $value',
    );
  }
}
