import 'package:pulumi/pulumi.dart' as pulumi;

/// Operator for process name filter
enum ProcessNameFilterOperator implements pulumi.PulumiEnum<String> {
  contains("contains"),
  notContains("notContains");

  const ProcessNameFilterOperator(this.wireValue);
  @override
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
