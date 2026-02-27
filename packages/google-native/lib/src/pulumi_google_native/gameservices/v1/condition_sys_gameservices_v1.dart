/// Trusted attributes supplied by any service that owns resources and uses the IAM system for access control.
enum ConditionSysGameservicesV1 {
  noAttr("NO_ATTR"),
  region("REGION"),
  service("SERVICE"),
  name("NAME"),
  ip("IP");

  const ConditionSysGameservicesV1(this.value);
  final String value;

  static ConditionSysGameservicesV1 fromValue(String value) {
    for (final item in ConditionSysGameservicesV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionSysGameservicesV1 value: $value');
  }
}
