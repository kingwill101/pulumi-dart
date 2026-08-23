/// operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.
enum OperatorValues {
  in_("In"),
  notIn("NotIn"),
  exists("Exists"),
  doesNotExist("DoesNotExist");

  const OperatorValues(this.wireValue);
  final String wireValue;

  static OperatorValues fromValue(String value) {
    for (final item in OperatorValues.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperatorValues value: $value');
  }
}
