/// Comparison operator to apply to the selector when specifying which elements in the collection this exclusion applies to.
enum ManagedRuleExclusionSelectorMatchOperator {
  valueEquals("Equals"),
  valueContains("Contains"),
  valueStartsWith("StartsWith"),
  valueEndsWith("EndsWith"),
  valueEqualsAny("EqualsAny");

  const ManagedRuleExclusionSelectorMatchOperator(this.value);
  final String value;

  static ManagedRuleExclusionSelectorMatchOperator fromValue(String value) {
    for (final item in ManagedRuleExclusionSelectorMatchOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedRuleExclusionSelectorMatchOperator value: $value');
  }
}

