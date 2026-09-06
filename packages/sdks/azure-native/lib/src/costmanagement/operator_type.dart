import 'package:pulumi/pulumi.dart' as pulumi;

/// The operator to use for comparison.
enum OperatorType implements pulumi.PulumiEnum<String> {
  valueIn("In"),
  valueContains("Contains");

  const OperatorType(this.wireValue);
  @override
  final String wireValue;

  static OperatorType fromValue(String value) {
    for (final item in OperatorType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperatorType value: $value');
  }
}
