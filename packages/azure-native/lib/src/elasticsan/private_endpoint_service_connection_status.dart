/// Indicates whether the connection has been Approved/Rejected/Removed by the owner of the service.
enum PrivateEndpointServiceConnectionStatus {
  valuePending("Pending"),
  valueApproved("Approved"),
  valueFailed("Failed"),
  valueRejected("Rejected");

  const PrivateEndpointServiceConnectionStatus(this.value);
  final String value;

  static PrivateEndpointServiceConnectionStatus fromValue(String value) {
    for (final item in PrivateEndpointServiceConnectionStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateEndpointServiceConnectionStatus value: $value');
  }
}

