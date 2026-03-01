/// The logs to use as input for the Replay.
enum GoogleCloudPolicysimulatorV1alphaReplayConfigLogSource {
  logSourceUnspecified("LOG_SOURCE_UNSPECIFIED"),
  recentAccesses("RECENT_ACCESSES");

  const GoogleCloudPolicysimulatorV1alphaReplayConfigLogSource(this.value);
  final String value;

  static GoogleCloudPolicysimulatorV1alphaReplayConfigLogSource fromValue(
    String value,
  ) {
    for (final item
        in GoogleCloudPolicysimulatorV1alphaReplayConfigLogSource.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudPolicysimulatorV1alphaReplayConfigLogSource value: $value',
    );
  }
}
