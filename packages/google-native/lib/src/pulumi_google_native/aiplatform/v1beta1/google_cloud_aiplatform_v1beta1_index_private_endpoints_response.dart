// ignore_for_file: unused_element, unnecessary_cast

/// IndexPrivateEndpoints proto is used to provide paths for users to send requests via private endpoints (e.g. private service access, private service connect). To send request via private service access, use match_grpc_address. To send request via private service connect, use service_attachment.
class GoogleCloudAiplatformV1beta1IndexPrivateEndpointsResponse {
  /// The ip address used to send match gRPC requests.
  final String matchGrpcAddress;

  /// The name of the service attachment resource. Populated if private service connect is enabled.
  final String serviceAttachment;

  GoogleCloudAiplatformV1beta1IndexPrivateEndpointsResponse({
    required this.matchGrpcAddress,
    required this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['matchGrpcAddress'] = matchGrpcAddress;
    map['serviceAttachment'] = serviceAttachment;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1IndexPrivateEndpointsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1IndexPrivateEndpointsResponse(
      matchGrpcAddress: map['matchGrpcAddress'] as String,
      serviceAttachment: map['serviceAttachment'] as String,
    );
  }
}
