/// This is deprecated and has no effect. Do not use.
enum ConditionSys3 {
  ip("IP"),
  name("NAME"),
  noAttr("NO_ATTR"),
  region("REGION"),
  service("SERVICE");

  const ConditionSys3(this.value);
  final String value;

  static ConditionSys3 fromValue(String value) {
    for (final item in ConditionSys3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionSys3 value: $value');
  }
}
