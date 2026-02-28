// ignore_for_file: unused_element, unnecessary_cast

import 'app_variable_declaration_schema.dart';

class AppVariableDeclaration {
  /// The description of the variable.
  final String description;

  /// The name of the variable. The name must start with a letter or underscore
  /// and contain only letters, numbers, or underscores.
  final String name;

  /// Represents a select subset of an OpenAPI 3.0 schema object.
  /// Structure is documented below.
  final AppVariableDeclarationSchema schema;

  /// Creates a new [AppVariableDeclaration].
  /// [description] The description of the variable.
  /// [name] The name of the variable. The name must start with a letter or underscore
  /// [schema] Represents a select subset of an OpenAPI 3.0 schema object.
  AppVariableDeclaration({
    required this.description,
    required this.name,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['name'] = name;
    map['schema'] = schema.toMap();
    return map;
  }

  factory AppVariableDeclaration.fromMap(Map<String, dynamic> map) {
    return AppVariableDeclaration(
      description: map['description'] as String,
      name: map['name'] as String,
      schema: AppVariableDeclarationSchema.fromMap(
          (map['schema'] as Map).cast<String, dynamic>()),
    );
  }
}
