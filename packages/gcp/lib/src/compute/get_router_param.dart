// ignore_for_file: unused_element, unnecessary_cast


class GetRouterParam {
  /// Resource manager tags to be bound to the router. Tag keys and values have the
  /// same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id},
  /// and values are in the format tagValues/456.
  final Map<String, String> resourceManagerTags;

  /// Creates a new [GetRouterParam].
  /// [resourceManagerTags] Resource manager tags to be bound to the router. Tag keys and values have the
  GetRouterParam({
    required this.resourceManagerTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceManagerTags': resourceManagerTags,
    };
  }

  factory GetRouterParam.fromMap(Map<String, dynamic> map) {
    return GetRouterParam(
      resourceManagerTags: (map['resourceManagerTags'] as Map).cast<String, String>(),
    );
  }
}

