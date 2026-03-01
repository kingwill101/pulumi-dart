/// the criteria operator.
enum Operator {
  valueEquals("Equals"),
  valueGreaterThan("GreaterThan"),
  valueGreaterThanOrEqual("GreaterThanOrEqual"),
  valueLessThan("LessThan"),
  valueLessThanOrEqual("LessThanOrEqual");

  const Operator(this.value);
  final String value;

  static Operator fromValue(String value) {
    for (final item in Operator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Operator value: $value');
  }
}

