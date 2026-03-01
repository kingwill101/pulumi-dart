// ignore_for_file: unused_element, unnecessary_cast

/// Specification of the GRPC Endpoint.
class GoogleCloudNetworksecurityV1GrpcEndpoint {
  /// The target URI of the gRPC endpoint. Only UDS path is supported, and should start with "unix:".
  final String targetUri;

  /// Creates a new [GoogleCloudNetworksecurityV1GrpcEndpoint].
  /// [targetUri] The target URI of the gRPC endpoint. Only UDS path is supported, and should start with "unix:".
  GoogleCloudNetworksecurityV1GrpcEndpoint({required this.targetUri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'targetUri': targetUri};
  }

  factory GoogleCloudNetworksecurityV1GrpcEndpoint.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudNetworksecurityV1GrpcEndpoint(
      targetUri: map['targetUri'] as String,
    );
  }
}
