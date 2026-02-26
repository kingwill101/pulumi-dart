/// Sets which mode to use for Security Posture features.
enum SecurityPostureConfigMode5 {
  modeUnspecified("MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  basic("BASIC");

  const SecurityPostureConfigMode5(this.value);
  final String value;

  static SecurityPostureConfigMode5 fromValue(String value) {
    for (final item in SecurityPostureConfigMode5.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPostureConfigMode5 value: $value');
  }
}
