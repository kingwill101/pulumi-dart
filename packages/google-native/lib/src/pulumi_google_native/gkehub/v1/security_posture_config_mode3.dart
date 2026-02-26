/// Sets which mode to use for Security Posture features.
enum SecurityPostureConfigMode3 {
  modeUnspecified("MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  basic("BASIC");

  const SecurityPostureConfigMode3(this.value);
  final String value;

  static SecurityPostureConfigMode3 fromValue(String value) {
    for (final item in SecurityPostureConfigMode3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPostureConfigMode3 value: $value');
  }
}
