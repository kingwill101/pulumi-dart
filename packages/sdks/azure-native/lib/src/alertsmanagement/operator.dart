/// Operator for a given condition.
enum Operator {
  valueEquals("Equals"),
  valueNotEquals("NotEquals"),
  valueContains("Contains"),
  valueDoesNotContain("DoesNotContain");

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

