// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_project_properties.dart';

/// {@template pulumi_migrate_migrate_projects_controller_migrate_project_args_doc}
/// The set of arguments for MigrateProjectsControllerMigrateProject.
/// {@endtemplate}
/// {@macro pulumi_migrate_migrate_projects_controller_migrate_project_args_doc}
class MigrateProjectsControllerMigrateProjectArgs {
  /// For optimistic concurrency control.
  final pulumi.Input<String>? eTag;
  /// Azure location in which project is created.
  final pulumi.Input<String>? location;
  /// Migrate project name.
  final pulumi.Input<String>? migrateProjectName;
  /// Properties of a migrate project.
  final pulumi.Input<MigrateProjectProperties>? properties;
  /// Name of the Azure Resource Group that project is part of.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [MigrateProjectsControllerMigrateProjectArgs].
  /// [eTag] For optimistic concurrency control.
  /// [location] Azure location in which project is created.
  /// [migrateProjectName] Migrate project name.
  /// [properties] Properties of a migrate project.
  /// [resourceGroupName] Name of the Azure Resource Group that project is part of.
  MigrateProjectsControllerMigrateProjectArgs({
    this.eTag,
    this.location,
    this.migrateProjectName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eTag': ?eTag,
      'location': ?location,
      'migrateProjectName': ?migrateProjectName,
      'properties': ?pulumi.Input.mapOptionalInputValue<MigrateProjectProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory MigrateProjectsControllerMigrateProjectArgs.fromMap(Map<String, dynamic> map) {
    return MigrateProjectsControllerMigrateProjectArgs(
      eTag: map['eTag'] == null ? null : (map['eTag']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      migrateProjectName: map['migrateProjectName'] == null ? null : (map['migrateProjectName']! as String).input(),
      properties: map['properties'] == null ? null : (MigrateProjectProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

