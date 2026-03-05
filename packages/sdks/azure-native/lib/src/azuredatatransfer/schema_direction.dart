/// The direction of the schema.
enum SchemaDirection {
  valueSend("Send"),
  valueReceive("Receive");

  const SchemaDirection(this.wireValue);
  final String wireValue;

  static SchemaDirection fromValue(String value) {
    for (final item in SchemaDirection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchemaDirection value: $value');
  }
}

