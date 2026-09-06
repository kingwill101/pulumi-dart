import 'package:pulumi/pulumi.dart' as pulumi;

/// The protocol of the endpoint.
enum InboundEndpointProtocol implements pulumi.PulumiEnum<String> {
  tCP("TCP"),
  uDP("UDP");

  const InboundEndpointProtocol(this.wireValue);
  @override
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
