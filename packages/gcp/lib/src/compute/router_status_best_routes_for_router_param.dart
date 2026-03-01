// ignore_for_file: unused_element, unnecessary_cast


class RouterStatusBestRoutesForRouterParam {
  /// Resource manager tags to be bound to the route. Tag keys and values have the
  /// same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id},
  /// and values are in the format tagValues/456. The field is ignored when empty.
  /// The field is immutable and causes resource replacement when mutated. This field is only
  /// set at create time and modifying this field after creation will trigger recreation.
  /// To apply tags to an existing resource, see the gcp.tags.TagBinding resource.
  final Map<String, String> resourceManagerTags;

  /// Creates a new [RouterStatusBestRoutesForRouterParam].
  /// [resourceManagerTags] Resource manager tags to be bound to the route. Tag keys and values have the
  RouterStatusBestRoutesForRouterParam({
    required this.resourceManagerTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceManagerTags': resourceManagerTags,
    };
  }

  factory RouterStatusBestRoutesForRouterParam.fromMap(Map<String, dynamic> map) {
    return RouterStatusBestRoutesForRouterParam(
      resourceManagerTags: (map['resourceManagerTags'] as Map).cast<String, String>(),
    );
  }
}

