// ignore_for_file: unused_element, unnecessary_cast

/// Specification of the GRPC Endpoint.
class GoogleCloudNetworksecurityV1GrpcEndpointResponse {
  /// The target URI of the gRPC endpoint. Only UDS path is supported, and should start with "unix:".
  final String targetUri;

  /// Creates a new [GoogleCloudNetworksecurityV1GrpcEndpointResponse].
  /// [targetUri] The target URI of the gRPC endpoint. Only UDS path is supported, and should start with "unix:".
  GoogleCloudNetworksecurityV1GrpcEndpointResponse({required this.targetUri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'targetUri': targetUri};
  }

  factory GoogleCloudNetworksecurityV1GrpcEndpointResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudNetworksecurityV1GrpcEndpointResponse(
      targetUri: map['targetUri'] as String,
    );
  }
}
