// ignore_for_file: unused_element, unnecessary_cast


class ServerlessInferenceEndpointResponse {
  /// Specifies any required headers to target this serverless endpoint.
  final Map<String, String> headers;
  /// [Required] The inference uri to target when making requests against the Serverless Endpoint.
  final String uri;

  /// Creates a new [ServerlessInferenceEndpointResponse].
  /// [headers] Specifies any required headers to target this serverless endpoint.
  /// [uri] [Required] The inference uri to target when making requests against the Serverless Endpoint.
  ServerlessInferenceEndpointResponse({
    required this.headers,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': headers,
      'uri': uri,
    };
  }

  factory ServerlessInferenceEndpointResponse.fromMap(Map<String, dynamic> map) {
    return ServerlessInferenceEndpointResponse(
      headers: (map['headers'] as Map).cast<String, String>(),
      uri: map['uri'] as String,
    );
  }
}

