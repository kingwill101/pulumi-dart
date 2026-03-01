// ignore_for_file: unused_element, unnecessary_cast


class TemplateScratchSourceResource {
  /// The ID of the Source Resource.
  final String resourceId;
  /// The type of the Source resource.
  final String resourceType;

  /// Creates a new [TemplateScratchSourceResource].
  /// [resourceId] The ID of the Source Resource.
  /// [resourceType] The type of the Source resource.
  TemplateScratchSourceResource({
    required this.resourceId,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
      'resourceType': resourceType,
    };
  }

  factory TemplateScratchSourceResource.fromMap(Map<String, dynamic> map) {
    return TemplateScratchSourceResource(
      resourceId: map['resourceId'] as String,
      resourceType: map['resourceType'] as String,
    );
  }
}

