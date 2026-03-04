/// Whether the rule is custom or default.
enum AdminRuleKind {
  valueCustom("Custom"),
  valueDefault("Default");

  const AdminRuleKind(this.wireValue);
  final String wireValue;

  static AdminRuleKind fromValue(String value) {
    for (final item in AdminRuleKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AdminRuleKind value: $value');
  }
}
