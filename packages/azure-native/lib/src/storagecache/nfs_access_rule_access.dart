/// Access allowed by this rule.
enum NfsAccessRuleAccess {
  valueNo("no"),
  valueRo("ro"),
  valueRw("rw");

  const NfsAccessRuleAccess(this.value);
  final String value;

  static NfsAccessRuleAccess fromValue(String value) {
    for (final item in NfsAccessRuleAccess.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NfsAccessRuleAccess value: $value');
  }
}

