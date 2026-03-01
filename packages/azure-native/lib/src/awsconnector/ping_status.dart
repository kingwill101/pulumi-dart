/// Property value
enum PingStatus {
  connectionLost("ConnectionLost"),
  inactive("Inactive"),
  online("Online");

  const PingStatus(this.value);
  final String value;

  static PingStatus fromValue(String value) {
    for (final item in PingStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PingStatus value: $value');
  }
}

