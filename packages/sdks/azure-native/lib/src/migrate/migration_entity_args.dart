// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_entity_properties.dart';

/// {@template pulumi_migrate_migration_entity_args_doc}
/// The set of arguments for MigrationEntity.
/// {@endtemplate}
/// {@macro pulumi_migrate_migration_entity_args_doc}
class MigrationEntityArgs {
  /// Migration Entity ARM name
  final pulumi.Input<String>? migrationEntityName;

  /// Migrate Project Name
  final pulumi.Input<String> projectName;

  /// The resource-specific properties for this resource.
  final pulumi.Input<MigrationEntityProperties>? properties;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [MigrationEntityArgs].
  /// [migrationEntityName] Migration Entity ARM name
  /// [projectName] Migrate Project Name
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  MigrationEntityArgs({
    this.migrationEntityName,
    required this.projectName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'migrationEntityName': ?migrationEntityName,
      'projectName': projectName,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            MigrationEntityProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory MigrationEntityArgs.fromMap(Map<String, dynamic> map) {
    return MigrationEntityArgs(
      migrationEntityName: (() {
        final guardedValue = map['migrationEntityName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MigrationEntityProperties.fromMap(
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
