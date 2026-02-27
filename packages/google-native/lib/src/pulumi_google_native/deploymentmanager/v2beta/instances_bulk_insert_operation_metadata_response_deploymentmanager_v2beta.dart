// ignore_for_file: unused_element, unnecessary_cast

class InstancesBulkInsertOperationMetadataResponseDeploymentmanagerV2beta {
  /// Status information per location (location name is key). Example key: zones/us-central1-a
  final Map<String, String> perLocationStatus;

  InstancesBulkInsertOperationMetadataResponseDeploymentmanagerV2beta({
    required this.perLocationStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['perLocationStatus'] = perLocationStatus;
    return map;
  }

  factory InstancesBulkInsertOperationMetadataResponseDeploymentmanagerV2beta.fromMap(
      Map<String, dynamic> map) {
    return InstancesBulkInsertOperationMetadataResponseDeploymentmanagerV2beta(
      perLocationStatus:
          (map['perLocationStatus'] as Map).cast<String, String>(),
    );
  }
}
