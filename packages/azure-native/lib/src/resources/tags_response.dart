// ignore_for_file: unused_element, unnecessary_cast


/// A dictionary of name and value pairs.
class TagsResponse {
  final Map<String, String>? tags;

  /// Creates a new [TagsResponse].
  /// [tags] Optional.
  TagsResponse({
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': ?tags,
    };
  }

  factory TagsResponse.fromMap(Map<String, dynamic> map) {
    return TagsResponse(
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

