// ignore_for_file: unused_element, unnecessary_cast

class RouterStatusBestRouteParam {
  /// Resource manager tags to be bound to the route. Tag keys and values have the
  /// same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id},
  /// and values are in the format tagValues/456. The field is ignored when empty.
  /// The field is immutable and causes resource replacement when mutated. This field is only
  /// set at create time and modifying this field after creation will trigger recreation.
  /// To apply tags to an existing resource, see the<span pulumi-lang-nodejs=" gcp.tags.TagBinding " pulumi-lang-dotnet=" gcp.tags.TagBinding " pulumi-lang-go=" tags.TagBinding " pulumi-lang-python=" tags.TagBinding " pulumi-lang-yaml=" gcp.tags.TagBinding " pulumi-lang-java=" gcp.tags.TagBinding "> gcp.tags.TagBinding </span>resource.
  final Map<String, String> resourceManagerTags;

  RouterStatusBestRouteParam({
    required this.resourceManagerTags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceManagerTags'] = resourceManagerTags;
    return map;
  }

  factory RouterStatusBestRouteParam.fromMap(Map<String, dynamic> map) {
    return RouterStatusBestRouteParam(
      resourceManagerTags:
          (map['resourceManagerTags'] as Map).cast<String, String>(),
    );
  }
}
