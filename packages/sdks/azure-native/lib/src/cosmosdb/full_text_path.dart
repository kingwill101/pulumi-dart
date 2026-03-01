// ignore_for_file: unused_element, unnecessary_cast


/// Represents the full text path specification.
class FullTextPath {
  /// The language of the full text field in the document.
  final String? language;
  /// The path to the full text field in the document.
  final String path;

  /// Creates a new [FullTextPath].
  /// [language] The language of the full text field in the document.
  /// [path] The path to the full text field in the document.
  FullTextPath({
    this.language,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'language': ?language,
      'path': path,
    };
  }

  factory FullTextPath.fromMap(Map<String, dynamic> map) {
    return FullTextPath(
      language: map['language'] == null ? null : map['language'] as String,
      path: map['path'] as String,
    );
  }
}

