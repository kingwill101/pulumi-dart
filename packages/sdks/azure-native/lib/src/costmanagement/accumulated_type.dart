/// Show costs accumulated over time.
enum AccumulatedType {
  valueTrue("true"),
  valueFalse("false");

  const AccumulatedType(this.wireValue);
  final String wireValue;

  static AccumulatedType fromValue(String value) {
    for (final item in AccumulatedType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccumulatedType value: $value');
  }
}
