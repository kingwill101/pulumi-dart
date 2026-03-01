/// The status of a private endpoint connection
enum PrivateLinkServiceConnectionStatus {
  valuePending("Pending"),
  valueApproved("Approved"),
  valueRejected("Rejected"),
  valueDisconnected("Disconnected");

  const PrivateLinkServiceConnectionStatus(this.value);
  final String value;

  static PrivateLinkServiceConnectionStatus fromValue(String value) {
    for (final item in PrivateLinkServiceConnectionStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateLinkServiceConnectionStatus value: $value');
  }
}

