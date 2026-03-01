// ignore_for_file: unused_element, unnecessary_cast


/// Represents the full text index path.
class FullTextIndexPathResponse {
  /// The path to the full text field in the document.
  final String path;

  /// Creates a new [FullTextIndexPathResponse].
  /// [path] The path to the full text field in the document.
  FullTextIndexPathResponse({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
    };
  }

  factory FullTextIndexPathResponse.fromMap(Map<String, dynamic> map) {
    return FullTextIndexPathResponse(
      path: map['path'] as String,
    );
  }
}

