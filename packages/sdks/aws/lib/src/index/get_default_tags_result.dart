// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDefaultTags.
class GetDefaultTagsResult {
  final String id;
  /// Key-value mapping of provider default tags.
  final Map<String, String> tags;

  /// Creates a new [GetDefaultTagsResult].
  /// [id] Required.
  /// [tags] Key-value mapping of provider default tags.
  const GetDefaultTagsResult({
    required this.id,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'tags': tags,
    };
  }

  factory GetDefaultTagsResult.fromMap(Map<String, dynamic> map) {
    return GetDefaultTagsResult(
      id: map['id'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
