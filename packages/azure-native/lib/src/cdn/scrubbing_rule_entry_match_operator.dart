/// When matchVariable is a collection, operate on the selector to specify which elements in the collection this rule applies to.
enum ScrubbingRuleEntryMatchOperator {
  equalsAny("EqualsAny");

  const ScrubbingRuleEntryMatchOperator(this.value);
  final String value;

  static ScrubbingRuleEntryMatchOperator fromValue(String value) {
    for (final item in ScrubbingRuleEntryMatchOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScrubbingRuleEntryMatchOperator value: $value');
  }
}

