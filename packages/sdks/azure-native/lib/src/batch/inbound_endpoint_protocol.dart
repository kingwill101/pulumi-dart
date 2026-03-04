/// The protocol of the endpoint.
enum InboundEndpointProtocol {
  tCP("TCP"),
  uDP("UDP");

  const InboundEndpointProtocol(this.wireValue);
  final String wireValue;

  static InboundEndpointProtocol fromValue(String value) {
    for (final item in InboundEndpointProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InboundEndpointProtocol value: $value');
  }
}
