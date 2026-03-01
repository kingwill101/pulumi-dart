/// The protocol of the endpoint.
enum InboundEndpointProtocol {
  tCP("TCP"),
  uDP("UDP");

  const InboundEndpointProtocol(this.value);
  final String value;

  static InboundEndpointProtocol fromValue(String value) {
    for (final item in InboundEndpointProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InboundEndpointProtocol value: $value');
  }
}

