// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getResourceTags.
class GetResourceTagsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String resourceId;

  /// Map of key=value pairs for each tag set on the resource.
  final Map<String, String> tags;

  GetResourceTagsResult({
    required this.id,
    required this.resourceId,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['resourceId'] = resourceId;
    map['tags'] = tags;
    return map;
  }

  factory GetResourceTagsResult.fromMap(Map<String, dynamic> map) {
    return GetResourceTagsResult(
      id: map['id'] as String,
      resourceId: map['resourceId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
