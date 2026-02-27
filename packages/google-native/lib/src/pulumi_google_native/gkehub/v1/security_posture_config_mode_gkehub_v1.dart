/// Sets which mode to use for Security Posture features.
enum SecurityPostureConfigModeGkehubV1 {
  modeUnspecified("MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  basic("BASIC");

  const SecurityPostureConfigModeGkehubV1(this.value);
  final String value;

  static SecurityPostureConfigModeGkehubV1 fromValue(String value) {
    for (final item in SecurityPostureConfigModeGkehubV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SecurityPostureConfigModeGkehubV1 value: $value');
  }
}
