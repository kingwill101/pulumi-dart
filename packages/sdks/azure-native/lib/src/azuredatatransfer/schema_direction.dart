/// The direction of the schema.
enum SchemaDirection {
  valueSend("Send"),
  valueReceive("Receive");

  const SchemaDirection(this.value);
  final String value;

  static SchemaDirection fromValue(String value) {
    for (final item in SchemaDirection.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchemaDirection value: $value');
  }
}

