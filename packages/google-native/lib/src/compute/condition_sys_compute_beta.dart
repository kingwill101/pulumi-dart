/// This is deprecated and has no effect. Do not use.
enum ConditionSysComputeBeta {
  ip("IP"),
  name("NAME"),
  noAttr("NO_ATTR"),
  region("REGION"),
  service("SERVICE");

  const ConditionSysComputeBeta(this.value);
  final String value;

  static ConditionSysComputeBeta fromValue(String value) {
    for (final item in ConditionSysComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionSysComputeBeta value: $value');
  }
}

