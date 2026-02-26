/// Trusted attributes supplied by any service that owns resources and uses the IAM system for access control.
enum ConditionSys4 {
  noAttr("NO_ATTR"),
  region("REGION"),
  service("SERVICE"),
  name("NAME"),
  ip("IP");

  const ConditionSys4(this.value);
  final String value;

  static ConditionSys4 fromValue(String value) {
    for (final item in ConditionSys4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionSys4 value: $value');
  }
}
