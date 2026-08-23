/// Connector status
enum ConnectorStatus {
  valueActive("active"),
  valueError("error"),
  valueSuspended("suspended");

  const ConnectorStatus(this.wireValue);
  final String wireValue;

  static ConnectorStatus fromValue(String value) {
    for (final item in ConnectorStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectorStatus value: $value');
  }
}
