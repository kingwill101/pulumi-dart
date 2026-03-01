/// Connector Type
enum ConnectorType {
  sINK("SINK"),
  sOURCE("SOURCE");

  const ConnectorType(this.value);
  final String value;

  static ConnectorType fromValue(String value) {
    for (final item in ConnectorType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectorType value: $value');
  }
}

