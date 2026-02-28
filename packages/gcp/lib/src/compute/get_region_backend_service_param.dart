// ignore_for_file: unused_element, unnecessary_cast


class GetRegionBackendServiceParam {
  /// Resource manager tags to be bound to the region backend service. Tag keys and values have the
  /// same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id},
  /// and values are in the format tagValues/456.
  final Map<String, String> resourceManagerTags;

  /// Creates a new [GetRegionBackendServiceParam].
  /// [resourceManagerTags] Resource manager tags to be bound to the region backend service. Tag keys and values have the
  GetRegionBackendServiceParam({
    required this.resourceManagerTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceManagerTags': resourceManagerTags,
    };
  }

  factory GetRegionBackendServiceParam.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceParam(
      resourceManagerTags: (map['resourceManagerTags'] as Map).cast<String, String>(),
    );
  }
}

