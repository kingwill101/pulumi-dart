/// The logs to use as input for the Replay.
enum GoogleCloudPolicysimulatorV1beta1ReplayConfigLogSource {
  logSourceUnspecified("LOG_SOURCE_UNSPECIFIED"),
  recentAccesses("RECENT_ACCESSES");

  const GoogleCloudPolicysimulatorV1beta1ReplayConfigLogSource(this.value);
  final String value;

  static GoogleCloudPolicysimulatorV1beta1ReplayConfigLogSource fromValue(String value) {
    for (final item in GoogleCloudPolicysimulatorV1beta1ReplayConfigLogSource.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudPolicysimulatorV1beta1ReplayConfigLogSource value: $value');
  }
}

