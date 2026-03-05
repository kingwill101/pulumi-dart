/// Schema Type. Immutable.
enum SchemaType {
  xml("xml"),
  json("json");

  const SchemaType(this.wireValue);
  final String wireValue;

  static SchemaType fromValue(String value) {
    for (final item in SchemaType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchemaType value: $value');
  }
}

