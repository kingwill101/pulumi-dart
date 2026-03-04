/// The private link service connection status.
enum ConnectionStatus {
  valuePending("Pending"),
  valueApproved("Approved"),
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
