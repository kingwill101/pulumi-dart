import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the operator
enum OperatorType implements pulumi.PulumiEnum<String> {
  valueFlux("Flux");

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
