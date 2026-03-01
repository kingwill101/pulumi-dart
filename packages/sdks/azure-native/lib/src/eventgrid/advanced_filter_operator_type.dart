/// The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
enum AdvancedFilterOperatorType {
  valueNumberIn("NumberIn"),
  valueNumberNotIn("NumberNotIn"),
  valueNumberLessThan("NumberLessThan"),
  valueNumberGreaterThan("NumberGreaterThan"),
  valueNumberLessThanOrEquals("NumberLessThanOrEquals"),
  valueNumberGreaterThanOrEquals("NumberGreaterThanOrEquals"),
  valueBoolEquals("BoolEquals"),
  valueStringIn("StringIn"),
  valueStringNotIn("StringNotIn"),
  valueStringBeginsWith("StringBeginsWith"),
  valueStringEndsWith("StringEndsWith"),
  valueStringContains("StringContains"),
  valueNumberInRange("NumberInRange"),
  valueNumberNotInRange("NumberNotInRange"),
  valueStringNotBeginsWith("StringNotBeginsWith"),
  valueStringNotEndsWith("StringNotEndsWith"),
  valueStringNotContains("StringNotContains"),
  valueIsNullOrUndefined("IsNullOrUndefined"),
  valueIsNotNull("IsNotNull");

  const AdvancedFilterOperatorType(this.value);
  final String value;

  static AdvancedFilterOperatorType fromValue(String value) {
    for (final item in AdvancedFilterOperatorType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AdvancedFilterOperatorType value: $value');
  }
}

