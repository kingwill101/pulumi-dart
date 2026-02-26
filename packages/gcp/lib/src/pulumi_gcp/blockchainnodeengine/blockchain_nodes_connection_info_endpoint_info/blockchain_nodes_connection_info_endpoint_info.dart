// ignore_for_file: unused_element, unnecessary_cast

class BlockchainNodesConnectionInfoEndpointInfo {
  /// (Output)
  /// The assigned URL for the node JSON-RPC API endpoint.
  final String? jsonRpcApiEndpoint;

  /// (Output)
  /// The assigned URL for the node WebSockets API endpoint.
  final String? websocketsApiEndpoint;

  BlockchainNodesConnectionInfoEndpointInfo({
    this.jsonRpcApiEndpoint,
    this.websocketsApiEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final jsonRpcApiEndpointValue = jsonRpcApiEndpoint;
    if (jsonRpcApiEndpointValue != null) {
      map['jsonRpcApiEndpoint'] = jsonRpcApiEndpointValue;
    }
    final websocketsApiEndpointValue = websocketsApiEndpoint;
    if (websocketsApiEndpointValue != null) {
      map['websocketsApiEndpoint'] = websocketsApiEndpointValue;
    }
    return map;
  }

  factory BlockchainNodesConnectionInfoEndpointInfo.fromMap(
      Map<String, dynamic> map) {
    return BlockchainNodesConnectionInfoEndpointInfo(
      jsonRpcApiEndpoint: map['jsonRpcApiEndpoint'] == null
          ? null
          : map['jsonRpcApiEndpoint'] as String,
      websocketsApiEndpoint: map['websocketsApiEndpoint'] == null
          ? null
          : map['websocketsApiEndpoint'] as String,
    );
  }
}
