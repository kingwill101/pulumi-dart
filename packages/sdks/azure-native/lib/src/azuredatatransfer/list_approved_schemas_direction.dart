/// The direction pipeline to filter approved schemas.
enum ListApprovedSchemasDirection {
  valueSend("Send"),
  valueReceive("Receive");

  const ListApprovedSchemasDirection(this.value);
  final String value;

  static ListApprovedSchemasDirection fromValue(String value) {
    for (final item in ListApprovedSchemasDirection.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ListApprovedSchemasDirection value: $value');
  }
}

