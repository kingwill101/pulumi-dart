// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDefaultTags.
class GetDefaultTagsResult {
  final String? id;
  /// Key-value mapping of provider default tags.
  final Map<String, String>? tags;

  /// Creates a new [GetDefaultTagsResult].
  /// [id] Optional.
  /// [tags] Key-value mapping of provider default tags.
  const GetDefaultTagsResult({
    this.id,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'tags': ?tags,
    };
  }

  factory GetDefaultTagsResult.fromMap(Map<String, dynamic> map) {
    return GetDefaultTagsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
