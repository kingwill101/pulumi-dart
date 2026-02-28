/// The type of the schema definition.
enum SchemaType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  protocolBuffer("PROTOCOL_BUFFER"),
  avro("AVRO");

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
