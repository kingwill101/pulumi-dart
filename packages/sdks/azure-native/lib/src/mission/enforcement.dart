/// Initiative enforcement (Enabled or Disabled).
enum Enforcement {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const Enforcement(this.value);
  final String value;

  static Enforcement fromValue(String value) {
    for (final item in Enforcement.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Enforcement value: $value');
  }
}

