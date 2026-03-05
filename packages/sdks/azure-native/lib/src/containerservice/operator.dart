/// operator represents a key's relationship to a set of values. Valid operators are In and NotIn
enum Operator {
  valueIn("In"),
  valueNotIn("NotIn"),
  valueExists("Exists"),
  valueDoesNotExist("DoesNotExist");

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

