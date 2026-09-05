// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getResourceTags.
class GetResourceTagsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? resourceId;
  /// Map of key=value pairs for each tag set on the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetResourceTagsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [resourceId] Optional.
  /// [tags] Map of key=value pairs for each tag set on the resource.
  const GetResourceTagsResult({
    this.id,
    this.resourceId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'resourceId': ?resourceId,
      'tags': ?tags,
    };
  }

  factory GetResourceTagsResult.fromMap(Map<String, dynamic> map) {
    return GetResourceTagsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
