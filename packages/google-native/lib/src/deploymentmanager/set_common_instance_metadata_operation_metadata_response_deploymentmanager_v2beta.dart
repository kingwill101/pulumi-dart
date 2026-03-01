// ignore_for_file: unused_element, unnecessary_cast

class SetCommonInstanceMetadataOperationMetadataResponseDeploymentmanagerV2beta {
  /// The client operation id.
  final String clientOperationId;

  /// Status information per location (location name is key). Example key: zones/us-central1-a
  final Map<String, String> perLocationOperations;

  /// Creates a new [SetCommonInstanceMetadataOperationMetadataResponseDeploymentmanagerV2beta].
  /// [clientOperationId] The client operation id.
  /// [perLocationOperations] Status information per location (location name is key). Example key: zones/us-central1-a
  SetCommonInstanceMetadataOperationMetadataResponseDeploymentmanagerV2beta({
    required this.clientOperationId,
    required this.perLocationOperations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientOperationId': clientOperationId,
      'perLocationOperations': perLocationOperations,
    };
  }

  factory SetCommonInstanceMetadataOperationMetadataResponseDeploymentmanagerV2beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return SetCommonInstanceMetadataOperationMetadataResponseDeploymentmanagerV2beta(
      clientOperationId: map['clientOperationId'] as String,
      perLocationOperations: (map['perLocationOperations'] as Map)
          .cast<String, String>(),
    );
  }
}
