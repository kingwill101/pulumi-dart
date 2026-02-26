// ignore_for_file: unused_element, unnecessary_cast

class InstancesBulkInsertOperationMetadataResponse {
  /// Status information per location (location name is key). Example key: zones/us-central1-a
  final Map<String, String> perLocationStatus;

  InstancesBulkInsertOperationMetadataResponse({
    required this.perLocationStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['perLocationStatus'] = perLocationStatus;
    return map;
  }

  factory InstancesBulkInsertOperationMetadataResponse.fromMap(
      Map<String, dynamic> map) {
    return InstancesBulkInsertOperationMetadataResponse(
      perLocationStatus:
          (map['perLocationStatus'] as Map).cast<String, String>(),
    );
  }
}
