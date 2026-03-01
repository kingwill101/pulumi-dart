// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_app_variable_declaration_schema.dart';

class AppVersionSnapshotAppVariableDeclaration {
  /// The description of the app version.
  final String? description;

  /// (Output)
  /// Identifier. The unique identifier of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final String? name;

  /// (Output)
  /// Represents a select subset of an OpenAPI 3.0 schema object.
  /// Structure is documented below.
  final List<AppVersionSnapshotAppVariableDeclarationSchema>? schemas;

  /// Creates a new [AppVersionSnapshotAppVariableDeclaration].
  /// [description] The description of the app version.
  /// [name] (Output)
  /// [schemas] (Output)
  AppVersionSnapshotAppVariableDeclaration({
    this.description,
    this.name,
    this.schemas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'schemas': ?schemas == null
          ? null
          : pulumi.Input.encodeList<
              AppVersionSnapshotAppVariableDeclarationSchema,
              Map<String, dynamic>
            >(schemas!, (value) => value.toMap()),
    };
  }

  factory AppVersionSnapshotAppVariableDeclaration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppVersionSnapshotAppVariableDeclaration(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      schemas: map['schemas'] == null
          ? null
          : pulumi.Input.decodeList<
              AppVersionSnapshotAppVariableDeclarationSchema
            >(
              map['schemas'],
              (value) => AppVersionSnapshotAppVariableDeclarationSchema.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
