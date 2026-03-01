/// Type of transformation.
enum DataflowMappingType {
  newProperties("NewProperties"),
  rename("Rename"),
  compute("Compute"),
  passThrough("PassThrough"),
  builtInFunction("BuiltInFunction");

  const DataflowMappingType(this.value);
  final String value;

  static DataflowMappingType fromValue(String value) {
    for (final item in DataflowMappingType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataflowMappingType value: $value');
  }
}

