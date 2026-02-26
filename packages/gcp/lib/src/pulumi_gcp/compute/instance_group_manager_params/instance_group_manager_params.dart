// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerParams {
  /// Resource manager tags to bind to the managed instance group. The tags are key-value pairs. Keys must be in the format tagKeys/123 and values in the format tagValues/456. For more information, see [Manage tags for resources](https://cloud.google.com/compute/docs/tag-resources)
  ///
  /// - - -
  final Map<String, String>? resourceManagerTags;

  InstanceGroupManagerParams({
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

  factory InstanceGroupManagerParams.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerParams(
      resourceManagerTags: map['resourceManagerTags'] == null
          ? null
          : (map['resourceManagerTags'] as Map).cast<String, String>(),
    );
  }
}
