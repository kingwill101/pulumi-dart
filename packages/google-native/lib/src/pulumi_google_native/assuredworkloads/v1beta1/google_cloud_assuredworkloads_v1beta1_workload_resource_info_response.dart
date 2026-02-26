// ignore_for_file: unused_element, unnecessary_cast

/// Represent the resources that are children of this Workload.
class GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfoResponse {
  /// Resource identifier. For a project this represents project_number.
  final String resourceId;

  /// Indicates the type of resource.
  final String resourceType;

  GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfoResponse({
    required this.resourceId,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceId'] = resourceId;
    map['resourceType'] = resourceType;
    return map;
  }

  factory GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfoResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfoResponse(
      resourceId: map['resourceId'] as String,
      resourceType: map['resourceType'] as String,
    );
  }
}
