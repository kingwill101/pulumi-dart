// ignore_for_file: unused_element, unnecessary_cast

class GetBackendBucketParam {
  /// Resource manager tags to be bound to the backend bucket. Tag keys and values have the
  /// same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id},
  /// and values are in the format tagValues/456.
  final Map<String, String> resourceManagerTags;

  /// Creates a new [GetBackendBucketParam].
  /// [resourceManagerTags] Resource manager tags to be bound to the backend bucket. Tag keys and values have the
  GetBackendBucketParam({required this.resourceManagerTags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resourceManagerTags': resourceManagerTags};
  }

  factory GetBackendBucketParam.fromMap(Map<String, dynamic> map) {
    return GetBackendBucketParam(
      resourceManagerTags: (map['resourceManagerTags'] as Map)
          .cast<String, String>(),
    );
  }
}
