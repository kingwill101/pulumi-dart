/// Type of the custom mapping
enum InputSchemaMappingType {
  valueJson("Json");

  const InputSchemaMappingType(this.wireValue);
  final String wireValue;

  static InputSchemaMappingType fromValue(String value) {
    for (final item in InputSchemaMappingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InputSchemaMappingType value: $value');
  }
}
