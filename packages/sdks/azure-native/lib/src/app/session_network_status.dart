/// Network status for the sessions.
enum SessionNetworkStatus {
  valueEgressEnabled("EgressEnabled"),
  valueEgressDisabled("EgressDisabled");

  const SessionNetworkStatus(this.wireValue);
  final String wireValue;

  static SessionNetworkStatus fromValue(String value) {
    for (final item in SessionNetworkStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SessionNetworkStatus value: $value');
  }
}

