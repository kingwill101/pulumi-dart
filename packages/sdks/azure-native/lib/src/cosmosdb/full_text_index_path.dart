// ignore_for_file: unused_element, unnecessary_cast


/// Represents the full text index path.
class FullTextIndexPath {
  /// The path to the full text field in the document.
  final String path;

  /// Creates a new [FullTextIndexPath].
  /// [path] The path to the full text field in the document.
  FullTextIndexPath({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
    };
  }

  factory FullTextIndexPath.fromMap(Map<String, dynamic> map) {
    return FullTextIndexPath(
      path: map['path'] as String,
    );
  }
}

