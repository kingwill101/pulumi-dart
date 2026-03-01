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
  GetMigrationEntityGroupArgs({
    required pulumi.Output<String> migrationEntityGroupName,
    required pulumi.Output<String> projectName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      migrationEntityGroupName = pulumi.Input.asInput<String>(migrationEntityGroupName),
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'migrationEntityGroupName': migrationEntityGroupName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMigrationEntityGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetMigrationEntityGroupArgs(
      migrationEntityGroupName: pulumi.Output.create<String>(map['migrationEntityGroupName'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

