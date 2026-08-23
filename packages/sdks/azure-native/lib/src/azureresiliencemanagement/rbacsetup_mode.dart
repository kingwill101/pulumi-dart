/// RBAC setup mode.
enum RBACSetupMode {
  automatedCustomRole("AutomatedCustomRole"),
  automatedBuiltinRoles("AutomatedBuiltinRoles"),
  manual("Manual");

  const RBACSetupMode(this.wireValue);
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
