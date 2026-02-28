// ignore_for_file: unused_element, unnecessary_cast

class LaunchTemplateTagSpecification {
  /// The type of resource to tag.
  final String? resourceType;

  /// A map of tags to assign to the resource.
  final Map<String, String>? tags;

  /// Creates a new [LaunchTemplateTagSpecification].
  /// [resourceType] The type of resource to tag.
  /// [tags] A map of tags to assign to the resource.
  LaunchTemplateTagSpecification({
    this.resourceType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final resourceTypeValue = resourceType;
    if (resourceTypeValue != null) {
      map['resourceType'] = resourceTypeValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory LaunchTemplateTagSpecification.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateTagSpecification(
      resourceType:
          map['resourceType'] == null ? null : map['resourceType'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
