/// Type of value copied from source.
enum ValueType {
  actual("actual"),
  display("display");

  const ValueType(this.wireValue);
  final String wireValue;

  static ValueType fromValue(String value) {
    for (final item in ValueType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ValueType value: $value');
  }
}
