// ignore_for_file: unused_element, unnecessary_cast


/// An individual conflict error.
class CatalogConflictErrorResponse {
  /// Name of the conflicting catalog item.
  final String name;
  /// The path of the file that has a conflicting name.
  final String path;

  /// Creates a new [CatalogConflictErrorResponse].
  /// [name] Name of the conflicting catalog item.
  /// [path] The path of the file that has a conflicting name.
  CatalogConflictErrorResponse({
    required this.name,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'path': path,
    };
  }

  factory CatalogConflictErrorResponse.fromMap(Map<String, dynamic> map) {
    return CatalogConflictErrorResponse(
      name: map['name'] as String,
      path: map['path'] as String,
    );
  }
}

