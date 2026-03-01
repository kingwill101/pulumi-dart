/// state status
enum PrivateLinkServiceConnectionStateStatus {
  approved("Approved"),
  pending("Pending"),
  rejected("Rejected"),
  disconnected("Disconnected");

  const PrivateLinkServiceConnectionStateStatus(this.value);
  final String value;

  static PrivateLinkServiceConnectionStateStatus fromValue(String value) {
    for (final item in PrivateLinkServiceConnectionStateStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateLinkServiceConnectionStateStatus value: $value');
  }
}

