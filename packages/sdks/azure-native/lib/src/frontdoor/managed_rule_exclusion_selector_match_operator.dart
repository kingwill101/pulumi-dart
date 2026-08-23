/// Comparison operator to apply to the selector when specifying which elements in the collection this exclusion applies to.
enum ManagedRuleExclusionSelectorMatchOperator {
  equals("Equals"),
  contains("Contains"),
  startsWith("StartsWith"),
  endsWith("EndsWith"),
  equalsAny("EqualsAny");

  const ManagedRuleExclusionSelectorMatchOperator(this.wireValue);
  final String wireValue;

  static ManagedRuleExclusionSelectorMatchOperator fromValue(String value) {
    for (final item in ManagedRuleExclusionSelectorMatchOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedRuleExclusionSelectorMatchOperator value: $value');
  }
}
