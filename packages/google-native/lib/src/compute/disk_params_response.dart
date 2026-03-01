// ignore_for_file: unused_element, unnecessary_cast

/// Additional disk params.
class DiskParamsResponse {
  /// Resource manager tags to be bound to the disk. Tag keys and values have the same definition as resource manager tags. Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`. The field is ignored (both PUT & PATCH) when empty.
  final Map<String, String> resourceManagerTags;

  /// Creates a new [DiskParamsResponse].
  /// [resourceManagerTags] Resource manager tags to be bound to the disk. Tag keys and values have the same definition as resource manager tags. Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`. The field is ignored (both PUT & PATCH) when empty.
  DiskParamsResponse({required this.resourceManagerTags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resourceManagerTags': resourceManagerTags};
  }

  factory DiskParamsResponse.fromMap(Map<String, dynamic> map) {
    return DiskParamsResponse(
      resourceManagerTags: (map['resourceManagerTags'] as Map)
          .cast<String, String>(),
    );
  }
}
