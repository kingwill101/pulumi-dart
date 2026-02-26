// ignore_for_file: unused_element, unnecessary_cast

class BucketObjectv2OverrideProviderDefaultTags {
  /// Map of tags to assign to the object. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Map<String, String>? tags;

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
