// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_entity_group_properties.dart';

/// {@template pulumi_migrate_migration_entity_group_args_doc}
/// The set of arguments for MigrationEntityGroup.
/// {@endtemplate}
/// {@macro pulumi_migrate_migration_entity_group_args_doc}
class MigrationEntityGroupArgs {
  /// Migration Entity Group ARM name
  final pulumi.Input<String>? migrationEntityGroupName;
  /// Migrate Project Name
  final pulumi.Input<String> projectName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<MigrationEntityGroupProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [MigrationEntityGroupArgs].
  /// [migrationEntityGroupName] Migration Entity Group ARM name
  /// [projectName] Migrate Project Name
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  MigrationEntityGroupArgs({
    String? migrationEntityGroupName,
    required String projectName,
    MigrationEntityGroupProperties? properties,
    required String resourceGroupName,
  }) :
      migrationEntityGroupName = pulumi.Input.asOptionalInput<String>(migrationEntityGroupName),
      projectName = pulumi.Input.asInput<String>(projectName),
      properties = pulumi.Input.asOptionalInput<MigrationEntityGroupProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'migrationEntityGroupName': ?migrationEntityGroupName,
      'projectName': projectName,
      'properties': ?pulumi.Input.mapOptionalInputValue<MigrationEntityGroupProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory MigrationEntityGroupArgs.fromMap(Map<String, dynamic> map) {
    return MigrationEntityGroupArgs(
      migrationEntityGroupName: map['migrationEntityGroupName'] == null ? null : map['migrationEntityGroupName'] as String,
      projectName: map['projectName'] as String,
      properties: map['properties'] == null ? null : MigrationEntityGroupProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

