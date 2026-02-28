// ignore_for_file: unused_element, unnecessary_cast

/// Specification of the GRPC Endpoint.
class GoogleCloudNetworksecurityV1beta1GrpcEndpointResponse {
  /// The target URI of the gRPC endpoint. Only UDS path is supported, and should start with "unix:".
  final String targetUri;

  /// Creates a new [GoogleCloudNetworksecurityV1beta1GrpcEndpointResponse].
  /// [targetUri] The target URI of the gRPC endpoint. Only UDS path is supported, and should start with "unix:".
  GoogleCloudNetworksecurityV1beta1GrpcEndpointResponse({
    required this.targetUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetUri'] = targetUri;
    return map;
  }

  factory GoogleCloudNetworksecurityV1beta1GrpcEndpointResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudNetworksecurityV1beta1GrpcEndpointResponse(
      targetUri: map['targetUri'] as String,
    );
  }
}
