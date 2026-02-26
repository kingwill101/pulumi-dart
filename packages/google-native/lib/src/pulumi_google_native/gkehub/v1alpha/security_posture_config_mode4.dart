/// Sets which mode to use for Security Posture features.
enum SecurityPostureConfigMode4 {
  modeUnspecified("MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  basic("BASIC");

  const SecurityPostureConfigMode4(this.value);
  final String value;

  static SecurityPostureConfigMode4 fromValue(String value) {
    for (final item in SecurityPostureConfigMode4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPostureConfigMode4 value: $value');
  }
}
