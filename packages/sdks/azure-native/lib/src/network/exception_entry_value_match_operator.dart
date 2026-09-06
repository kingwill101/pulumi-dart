import 'package:pulumi/pulumi.dart' as pulumi;

/// Operates on the allowed values for the matchVariable
enum ExceptionEntryValueMatchOperator implements pulumi.PulumiEnum<String> {
  valueEquals("Equals"),
  valueContains("Contains"),
  valueStartsWith("StartsWith"),
  valueEndsWith("EndsWith"),
  valueIPMatch("IPMatch");

  const ExceptionEntryValueMatchOperator(this.wireValue);
  @override
  final String wireValue;

  static ExceptionEntryValueMatchOperator fromValue(String value) {
    for (final item in ExceptionEntryValueMatchOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExceptionEntryValueMatchOperator value: $value');
  }
}
