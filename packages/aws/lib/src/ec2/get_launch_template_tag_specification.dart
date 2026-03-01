// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchTemplateTagSpecification {
  final String resourceType;

  /// Map of tags, each pair of which must exactly match a pair on the desired Launch Template.
  final Map<String, String> tags;

  /// Creates a new [GetLaunchTemplateTagSpecification].
  /// [resourceType] Required.
  /// [tags] Map of tags, each pair of which must exactly match a pair on the desired Launch Template.
  GetLaunchTemplateTagSpecification({
    required this.resourceType,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resourceType': resourceType, 'tags': tags};
  }

  factory GetLaunchTemplateTagSpecification.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateTagSpecification(
      resourceType: map['resourceType'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
