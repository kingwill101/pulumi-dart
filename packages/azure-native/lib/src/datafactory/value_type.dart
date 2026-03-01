/// Type of value copied from source.
enum ValueType {
  valueActual("actual"),
  valueDisplay("display");

  const ValueType(this.value);
  final String value;

  static ValueType fromValue(String value) {
    for (final item in ValueType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ValueType value: $value');
  }
}

