/// The private link service connection status.
enum ConnectionStatus {
  valueApproved("Approved"),
  valuePending("Pending"),
  valueRejected("Rejected"),
  valueDisconnected("Disconnected");

  const ConnectionStatus(this.value);
  final String value;

  static ConnectionStatus fromValue(String value) {
    for (final item in ConnectionStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionStatus value: $value');
  }
}

