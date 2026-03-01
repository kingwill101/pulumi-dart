// ignore_for_file: unused_element, unnecessary_cast


/// The mapping of content type to a repo path.
class ContentPathMap {
  /// Content type.
  final String? contentType;
  /// The path to the content.
  final String? path;

  /// Creates a new [ContentPathMap].
  /// [contentType] Content type.
  /// [path] The path to the content.
  ContentPathMap({
    this.contentType,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': ?contentType,
      'path': ?path,
    };
  }

  factory ContentPathMap.fromMap(Map<String, dynamic> map) {
    return ContentPathMap(
      contentType: map['contentType'] == null ? null : map['contentType'] as String,
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}

