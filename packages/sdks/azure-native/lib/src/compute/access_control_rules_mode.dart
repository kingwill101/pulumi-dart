import 'package:pulumi/pulumi.dart' as pulumi;

/// This property allows you to specify whether the access control rules are in Audit mode, in Enforce mode or Disabled. Possible values are: 'Audit', 'Enforce' or 'Disabled'.
enum AccessControlRulesMode implements pulumi.PulumiEnum<String> {
  audit("Audit"),
  enforce("Enforce"),
  disabled("Disabled");

  const AccessControlRulesMode(this.wireValue);
  @override
  final String wireValue;

  static AccessControlRulesMode fromValue(String value) {
    for (final item in AccessControlRulesMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessControlRulesMode value: $value');
  }
}
