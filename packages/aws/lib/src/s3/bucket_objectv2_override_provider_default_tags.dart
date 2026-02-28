// ignore_for_file: unused_element, unnecessary_cast

class BucketObjectv2OverrideProviderDefaultTags {
  /// Map of tags to assign to the object. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Map<String, String>? tags;

  /// Creates a new [BucketObjectv2OverrideProviderDefaultTags].
  /// [tags] Map of tags to assign to the object. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  BucketObjectv2OverrideProviderDefaultTags({
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory BucketObjectv2OverrideProviderDefaultTags.fromMap(
      Map<String, dynamic> map) {
    return BucketObjectv2OverrideProviderDefaultTags(
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
