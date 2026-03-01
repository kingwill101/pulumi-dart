/// Show costs accumulated over time.
enum AccumulatedType {
  valueTrue("true"),
  valueFalse("false");

  const AccumulatedType(this.value);
  final String value;

  static AccumulatedType fromValue(String value) {
    for (final item in AccumulatedType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccumulatedType value: $value');
  }
}

