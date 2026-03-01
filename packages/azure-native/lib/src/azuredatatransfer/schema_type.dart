/// The Schema Type
enum SchemaType {
  valueXsd("Xsd"),
  valueZip("Zip");

  const SchemaType(this.value);
  final String value;

  static SchemaType fromValue(String value) {
    for (final item in SchemaType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchemaType value: $value');
  }
}

