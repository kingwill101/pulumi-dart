// ignore_for_file: unused_element, unnecessary_cast

/// Points to a DeployedModel.
class GoogleCloudAiplatformV1DeployedModelRefResponse {
  /// Immutable. An ID of a DeployedModel in the above Endpoint.
  final String deployedModelId;

  /// Immutable. A resource name of an Endpoint.
  final String endpoint;

  GoogleCloudAiplatformV1DeployedModelRefResponse({
    required this.deployedModelId,
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deployedModelId'] = deployedModelId;
    map['endpoint'] = endpoint;
    return map;
  }

  factory GoogleCloudAiplatformV1DeployedModelRefResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1DeployedModelRefResponse(
      deployedModelId: map['deployedModelId'] as String,
      endpoint: map['endpoint'] as String,
    );
  }
}
