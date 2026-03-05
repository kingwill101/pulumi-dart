/// The direction pipeline to filter approved schemas.
enum ListApprovedSchemasDirection {
  valueSend("Send"),
  valueReceive("Receive");

  const ListApprovedSchemasDirection(this.wireValue);
  final String wireValue;

  static ListApprovedSchemasDirection fromValue(String value) {
    for (final item in ListApprovedSchemasDirection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ListApprovedSchemasDirection value: $value');
  }
}

