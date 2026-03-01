/// Operator how to compare the signal value with the threshold
enum SignalOperator {
  lowerThan("LowerThan"),
  lowerOrEquals("LowerOrEquals"),
  greaterThan("GreaterThan"),
  greaterOrEquals("GreaterOrEquals"),
  equals("Equals");

  const SignalOperator(this.value);
  final String value;

  static SignalOperator fromValue(String value) {
    for (final item in SignalOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SignalOperator value: $value');
  }
}

