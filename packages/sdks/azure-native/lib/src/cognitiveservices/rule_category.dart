/// Category of a managed network Outbound Rule of a cognitive services account.
enum RuleCategory {
  required("Required"),
  recommended("Recommended"),
  userDefined("UserDefined"),
  dependency("Dependency");

  const RuleCategory(this.wireValue);
  final String wireValue;

  static RuleCategory fromValue(String value) {
    for (final item in RuleCategory.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleCategory value: $value');
  }
}
