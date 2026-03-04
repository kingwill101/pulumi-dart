// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An individual conflict error.
class CatalogConflictErrorResponse {
  /// Name of the conflicting catalog item.
  final pulumi.Input<String> name;

  /// The path of the file that has a conflicting name.
  final pulumi.Input<String> path;

  /// Creates a new [CatalogConflictErrorResponse].
  /// [name] Name of the conflicting catalog item.
  /// [path] The path of the file that has a conflicting name.
  CatalogConflictErrorResponse({required this.name, required this.path});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'path': path};
  }

  factory CatalogConflictErrorResponse.fromMap(Map<String, dynamic> map) {
    return CatalogConflictErrorResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}
