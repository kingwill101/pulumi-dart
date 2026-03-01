/// Category of a managed network Outbound Rule of a cognitive services account.
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

