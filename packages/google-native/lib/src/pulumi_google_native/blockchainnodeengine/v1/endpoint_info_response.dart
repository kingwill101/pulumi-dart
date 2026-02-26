// ignore_for_file: unused_element, unnecessary_cast

/// Contains endpoint information through which to interact with a blockchain node.
class EndpointInfoResponse {
  /// The assigned URL for the node JSON-RPC API endpoint.
  final String jsonRpcApiEndpoint;

  /// The assigned URL for the node WebSockets API endpoint.
  final String websocketsApiEndpoint;

  EndpointInfoResponse({
    required this.jsonRpcApiEndpoint,
    required this.websocketsApiEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jsonRpcApiEndpoint'] = jsonRpcApiEndpoint;
    map['websocketsApiEndpoint'] = websocketsApiEndpoint;
    return map;
  }

  factory EndpointInfoResponse.fromMap(Map<String, dynamic> map) {
    return EndpointInfoResponse(
      jsonRpcApiEndpoint: map['jsonRpcApiEndpoint'] as String,
      websocketsApiEndpoint: map['websocketsApiEndpoint'] as String,
    );
  }
}
