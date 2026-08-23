// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Table properties
class DatabaseTableResponse {
  /// Indicates whether table is empty or not
  final pulumi.Input<bool> hasRows;
  /// Schema-qualified name of the table
  final pulumi.Input<String> name;

  /// Creates a new [DatabaseTableResponse].
  /// [hasRows] Indicates whether table is empty or not
  /// [name] Schema-qualified name of the table
  const DatabaseTableResponse({
    required this.hasRows,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hasRows': hasRows,
      'name': name,
    };
  }

  factory DatabaseTableResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseTableResponse(
      hasRows: pulumi.Input.fromValue(map['hasRows'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
