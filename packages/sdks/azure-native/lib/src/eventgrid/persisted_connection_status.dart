/// Status of the connection.
enum PersistedConnectionStatus {
  valuePending("Pending"),
  valueApproved("Approved"),
  valueRejected("Rejected"),
  valueDisconnected("Disconnected");

  const PersistedConnectionStatus(this.wireValue);
  final String wireValue;

  static PersistedConnectionStatus fromValue(String value) {
    for (final item in PersistedConnectionStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PersistedConnectionStatus value: $value');
  }
}

