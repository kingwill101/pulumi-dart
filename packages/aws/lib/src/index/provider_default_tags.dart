// ignore_for_file: unused_element, unnecessary_cast

class ProviderDefaultTags {
  /// Resource tags to default across all resources. Can also be configured with environment variables like `TF_AWS_DEFAULT_TAGS_<tag_name>`.
  final Map<String, String>? tags;

  /// Creates a new [ProviderDefaultTags].
  /// [tags] Resource tags to default across all resources. Can also be configured with environment variables like `TF_AWS_DEFAULT_TAGS_<tag_name>`.
  ProviderDefaultTags({
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

  factory ProviderDefaultTags.fromMap(Map<String, dynamic> map) {
    return ProviderDefaultTags(
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
