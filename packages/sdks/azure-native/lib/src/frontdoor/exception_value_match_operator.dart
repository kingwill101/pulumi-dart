import 'package:pulumi/pulumi.dart' as pulumi;

/// Comparison operator to apply to the value to be matched.
enum ExceptionValueMatchOperator implements pulumi.PulumiEnum<String> {
  equals("Equals"),
  contains("Contains"),
  startsWith("StartsWith"),
  endsWith("EndsWith"),
  equalsAny("EqualsAny"),
  iPMatch("IPMatch");

  const ExceptionValueMatchOperator(this.wireValue);
  @override
  final String wireValue;

  static ExceptionValueMatchOperator fromValue(String value) {
    for (final item in ExceptionValueMatchOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExceptionValueMatchOperator value: $value');
  }
}
