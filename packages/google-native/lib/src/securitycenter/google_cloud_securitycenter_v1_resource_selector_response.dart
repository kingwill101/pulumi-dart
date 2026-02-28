// ignore_for_file: unused_element, unnecessary_cast


/// Resource for selecting resource type.
class GoogleCloudSecuritycenterV1ResourceSelectorResponse {
  /// The resource types to run the detector on.
  final List<String> resourceTypes;

  /// Creates a new [GoogleCloudSecuritycenterV1ResourceSelectorResponse].
  /// [resourceTypes] The resource types to run the detector on.
  GoogleCloudSecuritycenterV1ResourceSelectorResponse({
    required this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceTypes': resourceTypes,
    };
  }

  factory GoogleCloudSecuritycenterV1ResourceSelectorResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudSecuritycenterV1ResourceSelectorResponse(
      resourceTypes: (map['resourceTypes'] as List).cast<String>(),
    );
  }
}

