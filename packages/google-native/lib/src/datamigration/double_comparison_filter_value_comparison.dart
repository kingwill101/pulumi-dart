/// Required. Relation between source value and compare value
enum DoubleComparisonFilterValueComparison {
  valueComparisonUnspecified("VALUE_COMPARISON_UNSPECIFIED"),
  valueComparisonIfValueSmallerThan("VALUE_COMPARISON_IF_VALUE_SMALLER_THAN"),
  valueComparisonIfValueSmallerEqualThan(
      "VALUE_COMPARISON_IF_VALUE_SMALLER_EQUAL_THAN"),
  valueComparisonIfValueLargerThan("VALUE_COMPARISON_IF_VALUE_LARGER_THAN"),
  valueComparisonIfValueLargerEqualThan(
      "VALUE_COMPARISON_IF_VALUE_LARGER_EQUAL_THAN");

  const DoubleComparisonFilterValueComparison(this.value);
  final String value;

  static DoubleComparisonFilterValueComparison fromValue(String value) {
    for (final item in DoubleComparisonFilterValueComparison.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown DoubleComparisonFilterValueComparison value: $value');
  }
}
