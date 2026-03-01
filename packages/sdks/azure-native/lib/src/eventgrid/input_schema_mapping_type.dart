/// Type of the custom mapping
enum InputSchemaMappingType {
  valueJson("Json");

  const InputSchemaMappingType(this.value);
  final String value;

  static InputSchemaMappingType fromValue(String value) {
    for (final item in InputSchemaMappingType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InputSchemaMappingType value: $value');
  }
}

