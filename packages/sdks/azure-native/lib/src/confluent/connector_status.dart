/// Connector Status
enum ConnectorStatus {
  pROVISIONING("PROVISIONING"),
  rUNNING("RUNNING"),
  pAUSED("PAUSED"),
  fAILED("FAILED");

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

