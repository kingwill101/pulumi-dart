// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDefaultTags.
class GetDefaultTagsResult {
  final String id;

  /// Key-value mapping of provider default tags.
  final Map<String, String> tags;

  GetDefaultTagsResult({
    required this.id,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['tags'] = tags;
    return map;
  }

  factory GetDefaultTagsResult.fromMap(Map<String, dynamic> map) {
    return GetDefaultTagsResult(
      id: map['id'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
