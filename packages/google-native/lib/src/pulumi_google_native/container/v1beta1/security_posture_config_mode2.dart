/// Sets which mode to use for Security Posture features.
enum SecurityPostureConfigMode2 {
  modeUnspecified("MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  basic("BASIC");

  const SecurityPostureConfigMode2(this.value);
  final String value;

  static SecurityPostureConfigMode2 fromValue(String value) {
    for (final item in SecurityPostureConfigMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPostureConfigMode2 value: $value');
  }
}
