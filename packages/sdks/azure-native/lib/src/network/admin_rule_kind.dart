/// Whether the rule is custom or default.
enum AdminRuleKind {
  valueCustom("Custom"),
  valueDefault("Default");

  const AdminRuleKind(this.value);
  final String value;

  static AdminRuleKind fromValue(String value) {
    for (final item in AdminRuleKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AdminRuleKind value: $value');
  }
}

