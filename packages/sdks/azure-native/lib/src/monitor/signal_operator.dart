/// Operator how to compare the signal value with the threshold
enum SignalOperator {
  lessThan("LessThan"),
  lessThanOrEqual("LessThanOrEqual"),
  greaterThan("GreaterThan"),
  greaterThanOrEqual("GreaterThanOrEqual"),
  equal("Equal");

  const SignalOperator(this.wireValue);
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
