/// Connection status of the service consumer with the service provider\r\nPossible state transitions\r\nPending -&gt; Approved (Service provider approves the connection request)\r\nPending -&gt; Rejected (Service provider rejects the connection request)\r\nPending -&gt; Disconnected (Service provider deletes the connection)\r\nApproved -&gt; Rejected (Service provider rejects the approved connection)\r\nApproved -&gt; Disconnected (Service provider deletes the connection)\r\nRejected -&gt; Pending (Service consumer re-initiates the connection request that was rejected)\r\nRejected -&gt; Disconnected (Service provider deletes the connection)
enum EndpointServiceConnectionStatus {
  approved("Approved"),
  pending("Pending"),
  rejected("Rejected"),
  disconnected("Disconnected"),
  timeout("Timeout");

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
