/// Operator for process name filter
enum ProcessNameFilterOperator {
  contains("contains"),
  notContains("notContains");

  const ProcessNameFilterOperator(this.wireValue);
  final String wireValue;

  static ProcessNameFilterOperator fromValue(String value) {
    for (final item in ProcessNameFilterOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProcessNameFilterOperator value: $value');
  }
}
