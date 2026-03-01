/// Sets which mode to use for Security Posture features.
enum SecurityPostureConfigMode {
  modeUnspecified("MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  basic("BASIC");

  const SecurityPostureConfigMode(this.value);
  final String value;

  static SecurityPostureConfigMode fromValue(String value) {
    for (final item in SecurityPostureConfigMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPostureConfigMode value: $value');
  }
}
