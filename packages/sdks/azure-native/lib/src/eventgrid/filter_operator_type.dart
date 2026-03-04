/// The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
enum FilterOperatorType {
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

  const FilterOperatorType(this.wireValue);
  final String wireValue;

  static FilterOperatorType fromValue(String value) {
    for (final item in FilterOperatorType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FilterOperatorType value: $value');
  }
}
