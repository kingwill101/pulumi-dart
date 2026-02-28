// ignore_for_file: unused_element, unnecessary_cast

/// Additional disk params.
class DiskParams {
  /// Resource manager tags to be bound to the disk. Tag keys and values have the same definition as resource manager tags. Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`. The field is ignored (both PUT & PATCH) when empty.
  final Map<String, String>? resourceManagerTags;

  /// Creates a new [DiskParams].
  /// [resourceManagerTags] Resource manager tags to be bound to the disk. Tag keys and values have the same definition as resource manager tags. Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`. The field is ignored (both PUT & PATCH) when empty.
  DiskParams({
    this.resourceManagerTags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final resourceManagerTagsValue = resourceManagerTags;
    if (resourceManagerTagsValue != null) {
      map['resourceManagerTags'] = resourceManagerTagsValue;
    }
    return map;
  }

  factory DiskParams.fromMap(Map<String, dynamic> map) {
    return DiskParams(
      resourceManagerTags: map['resourceManagerTags'] == null
          ? null
          : (map['resourceManagerTags'] as Map).cast<String, String>(),
    );
  }
}
