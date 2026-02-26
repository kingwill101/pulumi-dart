/// Trusted attributes supplied by any service that owns resources and uses the IAM system for access control.
enum ConditionSys5 {
  noAttr("NO_ATTR"),
  region("REGION"),
  service("SERVICE"),
  name("NAME"),
  ip("IP");

  const ConditionSys5(this.value);
  final String value;

  static ConditionSys5 fromValue(String value) {
    for (final item in ConditionSys5.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionSys5 value: $value');
  }
}
