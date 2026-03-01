/// Network status for the sessions.
enum SessionNetworkStatus {
  valueEgressEnabled("EgressEnabled"),
  valueEgressDisabled("EgressDisabled");

  const SessionNetworkStatus(this.value);
  final String value;

  static SessionNetworkStatus fromValue(String value) {
    for (final item in SessionNetworkStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SessionNetworkStatus value: $value');
  }
}

