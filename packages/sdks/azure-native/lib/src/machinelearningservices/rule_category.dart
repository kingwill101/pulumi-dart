/// Category of a managed network Outbound Rule of a machine learning workspace.
enum RuleCategory {
  valueRequired("Required"),
  valueRecommended("Recommended"),
  valueUserDefined("UserDefined"),
  valueDependency("Dependency");

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

