/// The concrete private link service connection.
enum PrivateLinkServiceConnectionStatus {
  valueApproved("Approved"),
  valueRejected("Rejected"),
  valuePending("Pending"),
  valueRemoved("Removed");

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

