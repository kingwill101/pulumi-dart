/// Connector Type
enum ConnectorType {
  sINK("SINK"),
  sOURCE("SOURCE");

  const ConnectorType(this.wireValue);
  final String wireValue;

  static ConnectorType fromValue(String value) {
    for (final item in ConnectorType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectorType value: $value');
  }
}

