// ignore_for_file: unused_element, unnecessary_cast


class ObjectCopyOverrideProviderDefaultTags {
  /// Map of tags to assign to the object. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Map<String, String>? tags;

  /// Creates a new [ObjectCopyOverrideProviderDefaultTags].
  /// [tags] Map of tags to assign to the object. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ObjectCopyOverrideProviderDefaultTags({
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': ?tags,
    };
  }

  factory ObjectCopyOverrideProviderDefaultTags.fromMap(Map<String, dynamic> map) {
    return ObjectCopyOverrideProviderDefaultTags(
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

