/// Status of the connection.
enum PersistedConnectionStatus {
  valuePending("Pending"),
  valueApproved("Approved"),
  valueRejected("Rejected"),
  valueDisconnected("Disconnected");

  const PersistedConnectionStatus(this.value);
  final String value;

  static PersistedConnectionStatus fromValue(String value) {
    for (final item in PersistedConnectionStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PersistedConnectionStatus value: $value');
  }
}

