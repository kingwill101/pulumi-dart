/// Operator for process name filter
enum ProcessNameFilterOperator {
  contains("contains"),
  notContains("notContains");

  const ProcessNameFilterOperator(this.value);
  final String value;

  static ProcessNameFilterOperator fromValue(String value) {
    for (final item in ProcessNameFilterOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProcessNameFilterOperator value: $value');
  }
}

