/// Connector Status
enum ConnectorStatus {
  pROVISIONING("PROVISIONING"),
  rUNNING("RUNNING"),
  pAUSED("PAUSED"),
  fAILED("FAILED");

  const ConnectorStatus(this.value);
  final String value;

  static ConnectorStatus fromValue(String value) {
    for (final item in ConnectorStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectorStatus value: $value');
  }
}

