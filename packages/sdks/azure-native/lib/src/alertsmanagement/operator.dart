/// Operator for a given condition.
enum Operator {
  equals("Equals"),
  notEquals("NotEquals"),
  contains("Contains"),
  doesNotContain("DoesNotContain");

  const Operator(this.wireValue);
  final String wireValue;

  static Operator fromValue(String value) {
    for (final item in Operator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Operator value: $value');
  }
}
