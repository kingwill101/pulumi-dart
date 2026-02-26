// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../app_version_snapshot_app_variable_declaration_schema/app_version_snapshot_app_variable_declaration_schema.dart';

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

  AppVersionSnapshotAppVariableDeclaration({
    this.description,
    this.name,
    this.schemas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final schemasValue = schemas;
    if (schemasValue != null) {
      map['schemas'] = Input.encodeList<
          AppVersionSnapshotAppVariableDeclarationSchema,
          Map<String, dynamic>>(schemasValue, (value) => value.toMap());
    }
    return map;
  }

  factory AppVersionSnapshotAppVariableDeclaration.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotAppVariableDeclaration(
      description:
          map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      schemas: map['schemas'] == null
          ? null
          : Input.decodeList<AppVersionSnapshotAppVariableDeclarationSchema>(
              map['schemas'],
              (value) => AppVersionSnapshotAppVariableDeclarationSchema.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
