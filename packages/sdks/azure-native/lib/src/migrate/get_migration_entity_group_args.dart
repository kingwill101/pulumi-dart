// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_migration_entity_group_args_doc}
/// Arguments for getMigrationEntityGroup.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_migration_entity_group_args_doc}
class GetMigrationEntityGroupArgs {
  /// Migration Entity Group ARM name
  final pulumi.Input<String> migrationEntityGroupName;
  /// Migrate Project Name
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMigrationEntityGroupArgs].
  /// [migrationEntityGroupName] Migration Entity Group ARM name
  /// [projectName] Migrate Project Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetMigrationEntityGroupArgs({
    required this.migrationEntityGroupName,
    required this.projectName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'migrationEntityGroupName': migrationEntityGroupName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMigrationEntityGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetMigrationEntityGroupArgs(
      migrationEntityGroupName: pulumi.Input.fromValue(map['migrationEntityGroupName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
