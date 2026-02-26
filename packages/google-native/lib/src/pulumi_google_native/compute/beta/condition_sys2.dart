/// This is deprecated and has no effect. Do not use.
enum ConditionSys2 {
  ip("IP"),
  name("NAME"),
  noAttr("NO_ATTR"),
  region("REGION"),
  service("SERVICE");

  const ConditionSys2(this.value);
  final String value;

  static ConditionSys2 fromValue(String value) {
    for (final item in ConditionSys2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionSys2 value: $value');
  }
}
