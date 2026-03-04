/// Status of the connection.
enum PrivateLinkConnectionStatus {
  valuePending("Pending"),
  valueApproved("Approved"),
  valueRejected("Rejected"),
  valueDisconnected("Disconnected");

  const PrivateLinkConnectionStatus(this.wireValue);
  final String wireValue;

  static PrivateLinkConnectionStatus fromValue(String value) {
    for (final item in PrivateLinkConnectionStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateLinkConnectionStatus value: $value');
  }
}
