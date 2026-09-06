import 'package:pulumi/pulumi.dart' as pulumi;

/// When the matchVariable points to a key-value pair (e.g, RequestHeader), this operates on the selector
enum ExceptionEntrySelectorMatchOperator implements pulumi.PulumiEnum<String> {
  valueEquals("Equals"),
  valueContains("Contains"),
  valueStartsWith("StartsWith"),
  valueEndsWith("EndsWith");

  const ExceptionEntrySelectorMatchOperator(this.wireValue);
  @override
  final String wireValue;

  static ExceptionEntrySelectorMatchOperator fromValue(String value) {
    for (final item in ExceptionEntrySelectorMatchOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExceptionEntrySelectorMatchOperator value: $value');
  }
}
