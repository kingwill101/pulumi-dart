/// Category of a managed network Outbound Rule of a machine learning workspace.
enum RuleCategory {
  valueRequired("Required"),
  valueRecommended("Recommended"),
  valueUserDefined("UserDefined"),
  valueDependency("Dependency");

  const RuleCategory(this.value);
  final String value;

  static RuleCategory fromValue(String value) {
    for (final item in RuleCategory.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleCategory value: $value');
  }
}

