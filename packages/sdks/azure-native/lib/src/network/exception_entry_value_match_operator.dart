/// Operates on the allowed values for the matchVariable
enum ExceptionEntryValueMatchOperator {
  valueEquals("Equals"),
  valueContains("Contains"),
  valueStartsWith("StartsWith"),
  valueEndsWith("EndsWith"),
  valueIPMatch("IPMatch");

  const ExceptionEntryValueMatchOperator(this.value);
  final String value;

  static ExceptionEntryValueMatchOperator fromValue(String value) {
    for (final item in ExceptionEntryValueMatchOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExceptionEntryValueMatchOperator value: $value');
  }
}

