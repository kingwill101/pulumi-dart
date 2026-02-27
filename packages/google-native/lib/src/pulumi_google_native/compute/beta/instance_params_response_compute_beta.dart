// ignore_for_file: unused_element, unnecessary_cast

/// Additional instance params.
class InstanceParamsResponseComputeBeta {
  /// Resource manager tags to be bound to the instance. Tag keys and values have the same definition as resource manager tags. Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`. The field is ignored (both PUT & PATCH) when empty.
  final Map<String, String> resourceManagerTags;

  InstanceParamsResponseComputeBeta({
    required this.resourceManagerTags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceManagerTags'] = resourceManagerTags;
    return map;
  }

  factory InstanceParamsResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return InstanceParamsResponseComputeBeta(
      resourceManagerTags:
          (map['resourceManagerTags'] as Map).cast<String, String>(),
    );
  }
}
