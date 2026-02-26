// ignore_for_file: unused_element, unnecessary_cast

class InstancesBulkInsertOperationMetadataResponse2 {
  /// Status information per location (location name is key). Example key: zones/us-central1-a
  final Map<String, String> perLocationStatus;

  InstancesBulkInsertOperationMetadataResponse2({
    required this.perLocationStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['perLocationStatus'] = perLocationStatus;
    return map;
  }

  factory InstancesBulkInsertOperationMetadataResponse2.fromMap(
      Map<String, dynamic> map) {
    return InstancesBulkInsertOperationMetadataResponse2(
      perLocationStatus:
          (map['perLocationStatus'] as Map).cast<String, String>(),
    );
  }
}
