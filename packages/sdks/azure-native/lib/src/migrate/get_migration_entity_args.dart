// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_migration_entity_args_doc}
/// Arguments for getMigrationEntity.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_migration_entity_args_doc}
class GetMigrationEntityArgs {
  /// Migration Entity ARM name
  final pulumi.Input<String> migrationEntityName;
  /// Migrate Project Name
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMigrationEntityArgs].
  /// [migrationEntityName] Migration Entity ARM name
  /// [projectName] Migrate Project Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetMigrationEntityArgs({
    required pulumi.Output<String> migrationEntityName,
    required pulumi.Output<String> projectName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      migrationEntityName = pulumi.Input.asInput<String>(migrationEntityName),
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'migrationEntityName': migrationEntityName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMigrationEntityArgs.fromMap(Map<String, dynamic> map) {
    return GetMigrationEntityArgs(
      migrationEntityName: pulumi.Output.create<String>(map['migrationEntityName'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

