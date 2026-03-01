/// The type of the property.
enum PropertyType {
  valueString("String");

  const PropertyType(this.value);
  final String value;

  static PropertyType fromValue(String value) {
    for (final item in PropertyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PropertyType value: $value');
  }
}

