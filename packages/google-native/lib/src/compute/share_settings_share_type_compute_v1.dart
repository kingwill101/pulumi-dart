/// Type of sharing for this shared-reservation
enum ShareSettingsShareTypeComputeV1 {
  local("LOCAL"),
  organization("ORGANIZATION"),
  shareTypeUnspecified("SHARE_TYPE_UNSPECIFIED"),
  specificProjects("SPECIFIC_PROJECTS");

  const ShareSettingsShareTypeComputeV1(this.value);
  final String value;

  static ShareSettingsShareTypeComputeV1 fromValue(String value) {
    for (final item in ShareSettingsShareTypeComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ShareSettingsShareTypeComputeV1 value: $value');
  }
}

