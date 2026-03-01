/// Gets or sets the status.
enum PrivateEndpointConnectionStatus {
  approved("Approved"),
  disconnected("Disconnected"),
  pending("Pending"),
  rejected("Rejected");

  const PrivateEndpointConnectionStatus(this.value);
  final String value;

  static PrivateEndpointConnectionStatus fromValue(String value) {
    for (final item in PrivateEndpointConnectionStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateEndpointConnectionStatus value: $value');
  }
}

