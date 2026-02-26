// ignore_for_file: unused_element, unnecessary_cast

/// Specification of the GRPC Endpoint.
class GoogleCloudNetworksecurityV1GrpcEndpointResponse {
  /// The target URI of the gRPC endpoint. Only UDS path is supported, and should start with "unix:".
  final String targetUri;

  GoogleCloudNetworksecurityV1GrpcEndpointResponse({
    required this.targetUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetUri'] = targetUri;
    return map;
  }

  factory GoogleCloudNetworksecurityV1GrpcEndpointResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudNetworksecurityV1GrpcEndpointResponse(
      targetUri: map['targetUri'] as String,
    );
  }
}
