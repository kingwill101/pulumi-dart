// ignore_for_file: unused_element, unnecessary_cast


class GetTemplateScratchesScratchSourceResource {
  /// The ID of the Source Resource.
  final String resourceId;
  /// The type of the Source resource.
  final String resourceType;

  /// Creates a new [GetTemplateScratchesScratchSourceResource].
  /// [resourceId] The ID of the Source Resource.
  /// [resourceType] The type of the Source resource.
  GetTemplateScratchesScratchSourceResource({
    required this.resourceId,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
      'resourceType': resourceType,
    };
  }

  factory GetTemplateScratchesScratchSourceResource.fromMap(Map<String, dynamic> map) {
    return GetTemplateScratchesScratchSourceResource(
      resourceId: map['resourceId'] as String,
      resourceType: map['resourceType'] as String,
    );
  }
}

