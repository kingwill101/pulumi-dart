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
    this.migrationEntityGroupName,
    required this.projectName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'migrationEntityGroupName': ?migrationEntityGroupName,
      'projectName': projectName,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            MigrationEntityGroupProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory MigrationEntityGroupArgs.fromMap(Map<String, dynamic> map) {
    return MigrationEntityGroupArgs(
      migrationEntityGroupName: (() {
        final guardedValue = map['migrationEntityGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MigrationEntityGroupProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
