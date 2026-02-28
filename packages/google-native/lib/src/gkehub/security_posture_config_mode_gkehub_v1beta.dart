/// Sets which mode to use for Security Posture features.
enum SecurityPostureConfigModeGkehubV1beta {
  modeUnspecified("MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  basic("BASIC");

  const SecurityPostureConfigModeGkehubV1beta(this.value);
  final String value;

  static SecurityPostureConfigModeGkehubV1beta fromValue(String value) {
    for (final item in SecurityPostureConfigModeGkehubV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SecurityPostureConfigModeGkehubV1beta value: $value');
  }
}
