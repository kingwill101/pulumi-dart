// ignore_for_file: unused_element, unnecessary_cast


/// Additional instance params.
class InstanceParamsResponseComputeV1 {
  /// Resource manager tags to be bound to the instance. Tag keys and values have the same definition as resource manager tags. Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`. The field is ignored (both PUT & PATCH) when empty.
  final Map<String, String> resourceManagerTags;

  /// Creates a new [InstanceParamsResponseComputeV1].
  /// [resourceManagerTags] Resource manager tags to be bound to the instance. Tag keys and values have the same definition as resource manager tags. Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`. The field is ignored (both PUT & PATCH) when empty.
  InstanceParamsResponseComputeV1({
    required this.resourceManagerTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceManagerTags': resourceManagerTags,
    };
  }

  factory InstanceParamsResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return InstanceParamsResponseComputeV1(
      resourceManagerTags: (map['resourceManagerTags'] as Map).cast<String, String>(),
    );
  }
}

