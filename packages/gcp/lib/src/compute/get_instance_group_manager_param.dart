// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceGroupManagerParam {
  /// Resource manager tags to bind to the managed instance group. The tags are key-value pairs. Keys must be in the format tagKeys/123 and values in the format tagValues/456.
  final Map<String, String> resourceManagerTags;

  /// Creates a new [GetInstanceGroupManagerParam].
  /// [resourceManagerTags] Resource manager tags to bind to the managed instance group. The tags are key-value pairs. Keys must be in the format tagKeys/123 and values in the format tagValues/456.
  GetInstanceGroupManagerParam({
    required this.resourceManagerTags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceManagerTags'] = resourceManagerTags;
    return map;
  }

  factory GetInstanceGroupManagerParam.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerParam(
      resourceManagerTags:
          (map['resourceManagerTags'] as Map).cast<String, String>(),
    );
  }
}
