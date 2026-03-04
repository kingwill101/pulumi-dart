/// Property value
enum PingStatus {
  connectionLost("ConnectionLost"),
  inactive("Inactive"),
  online("Online");

  const PingStatus(this.wireValue);
  final String wireValue;

  static PingStatus fromValue(String value) {
    for (final item in PingStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PingStatus value: $value');
  }
}
