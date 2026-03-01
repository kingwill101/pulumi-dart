/// The schema type.
enum SchemaType {
  valueNotSpecified("NotSpecified"),
  valueXml("Xml");

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

