// ignore_for_file: unused_element, unnecessary_cast

class SetCommonInstanceMetadataOperationMetadataResponse {
  /// The client operation id.
  final String clientOperationId;

  /// Status information per location (location name is key). Example key: zones/us-central1-a
  final Map<String, String> perLocationOperations;

  /// Creates a new [SetCommonInstanceMetadataOperationMetadataResponse].
  /// [clientOperationId] The client operation id.
  /// [perLocationOperations] Status information per location (location name is key). Example key: zones/us-central1-a
  SetCommonInstanceMetadataOperationMetadataResponse({
    required this.clientOperationId,
    required this.perLocationOperations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientOperationId'] = clientOperationId;
    map['perLocationOperations'] = perLocationOperations;
    return map;
  }

  factory SetCommonInstanceMetadataOperationMetadataResponse.fromMap(
      Map<String, dynamic> map) {
    return SetCommonInstanceMetadataOperationMetadataResponse(
      clientOperationId: map['clientOperationId'] as String,
      perLocationOperations:
          (map['perLocationOperations'] as Map).cast<String, String>(),
    );
  }
}
