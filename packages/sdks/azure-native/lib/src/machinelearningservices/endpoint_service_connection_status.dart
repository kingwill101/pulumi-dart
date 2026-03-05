/// Connection status of the service consumer with the service provider
enum EndpointServiceConnectionStatus {
  valueApproved("Approved"),
  valuePending("Pending"),
  valueRejected("Rejected"),
  valueDisconnected("Disconnected");

  const EndpointServiceConnectionStatus(this.wireValue);
  final String wireValue;

  static EndpointServiceConnectionStatus fromValue(String value) {
    for (final item in EndpointServiceConnectionStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointServiceConnectionStatus value: $value');
  }
}

