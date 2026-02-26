// ignore_for_file: unused_element, unnecessary_cast

class GetRegionInstanceGroupManagerParam {
  /// Resource manager tags to bind to the managed instance group. The tags are key-value pairs. Keys must be in the format tagKeys/123 and values in the format tagValues/456.
  final Map<String, String> resourceManagerTags;

  GetRegionInstanceGroupManagerParam({
    required this.resourceManagerTags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceManagerTags'] = resourceManagerTags;
    return map;
  }

  factory GetRegionInstanceGroupManagerParam.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerParam(
      resourceManagerTags:
          (map['resourceManagerTags'] as Map).cast<String, String>(),
    );
  }
}
