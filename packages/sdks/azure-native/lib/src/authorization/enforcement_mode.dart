/// The policy assignment enforcement mode. Possible values are Default, DoNotEnforce, and Enroll
enum EnforcementMode {
  valueDefault("Default"),
  valueDoNotEnforce("DoNotEnforce"),
  valueEnroll("Enroll");

  const EnforcementMode(this.value);
  final String value;

  static EnforcementMode fromValue(String value) {
    for (final item in EnforcementMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnforcementMode value: $value');
  }
}

