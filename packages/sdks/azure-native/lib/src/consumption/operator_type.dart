import 'package:pulumi/pulumi.dart' as pulumi;

/// The comparison operator.
enum OperatorType implements pulumi.PulumiEnum<String> {
  equalTo("EqualTo"),
  greaterThan("GreaterThan"),
  greaterThanOrEqualTo("GreaterThanOrEqualTo");

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
