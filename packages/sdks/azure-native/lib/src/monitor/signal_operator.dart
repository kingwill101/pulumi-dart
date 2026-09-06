import 'package:pulumi/pulumi.dart' as pulumi;

/// Operator how to compare the signal value with the threshold
enum SignalOperator implements pulumi.PulumiEnum<String> {
  lessThan("LessThan"),
  lessThanOrEqual("LessThanOrEqual"),
  greaterThan("GreaterThan"),
  greaterThanOrEqual("GreaterThanOrEqual"),
  equal("Equal");

  const SignalOperator(this.wireValue);
  @override
  final String wireValue;

  static SignalOperator fromValue(String value) {
    for (final item in SignalOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SignalOperator value: $value');
  }
}
