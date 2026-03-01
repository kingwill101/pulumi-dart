/// When the matchVariable points to a key-value pair (e.g, RequestHeader), this operates on the selector
enum ExceptionEntrySelectorMatchOperator {
  valueEquals("Equals"),
  valueContains("Contains"),
  valueStartsWith("StartsWith"),
  valueEndsWith("EndsWith");

  const ExceptionEntrySelectorMatchOperator(this.value);
  final String value;

  static ExceptionEntrySelectorMatchOperator fromValue(String value) {
    for (final item in ExceptionEntrySelectorMatchOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExceptionEntrySelectorMatchOperator value: $value');
  }
}

