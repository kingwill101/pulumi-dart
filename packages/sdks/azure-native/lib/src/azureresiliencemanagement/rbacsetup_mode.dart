import 'package:pulumi/pulumi.dart' as pulumi;

/// RBAC setup mode.
enum RBACSetupMode implements pulumi.PulumiEnum<String> {
  automatedCustomRole("AutomatedCustomRole"),
  automatedBuiltinRoles("AutomatedBuiltinRoles"),
  manual("Manual");

  const RBACSetupMode(this.wireValue);
  @override
  final String wireValue;

  static RBACSetupMode fromValue(String value) {
    for (final item in RBACSetupMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RBACSetupMode value: $value');
  }
}
