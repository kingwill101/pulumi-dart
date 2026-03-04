/// The private link service connection status.
enum ConnectionStatus {
  valueApproved("Approved"),
  valuePending("Pending"),
  valueRejected("Rejected"),
  valueDisconnected("Disconnected");

  const ConnectionStatus(this.wireValue);
  final String wireValue;

  static ConnectionStatus fromValue(String value) {
    for (final item in ConnectionStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionStatus value: $value');
  }
}
