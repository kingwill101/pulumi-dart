/// This property allows you to specify whether the access control rules are in Audit mode, in Enforce mode or Disabled. Possible values are: 'Audit', 'Enforce' or 'Disabled'.
enum AccessControlRulesMode {
  audit("Audit"),
  enforce("Enforce"),
  disabled("Disabled");

  const AccessControlRulesMode(this.value);
  final String value;

  static AccessControlRulesMode fromValue(String value) {
    for (final item in AccessControlRulesMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessControlRulesMode value: $value');
  }
}

