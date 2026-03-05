/// Gets or sets the status.
enum PrivateEndpointConnectionStatus {
  approved("Approved"),
  disconnected("Disconnected"),
  pending("Pending"),
  rejected("Rejected");

  const PrivateEndpointConnectionStatus(this.wireValue);
  final String wireValue;

  static PrivateEndpointConnectionStatus fromValue(String value) {
    for (final item in PrivateEndpointConnectionStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateEndpointConnectionStatus value: $value');
  }
}

