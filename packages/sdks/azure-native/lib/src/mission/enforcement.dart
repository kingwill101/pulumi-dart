/// Initiative enforcement (Enabled or Disabled).
enum Enforcement {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const Enforcement(this.wireValue);
  final String wireValue;

  static Enforcement fromValue(String value) {
    for (final item in Enforcement.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Enforcement value: $value');
  }
}
