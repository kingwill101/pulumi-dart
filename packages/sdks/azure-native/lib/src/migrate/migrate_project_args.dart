// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_project_properties.dart';
import 'migrate_project_tags.dart';

/// {@template pulumi_migrate_migrate_project_args_doc}
/// The set of arguments for MigrateProject.
/// {@endtemplate}
/// {@macro pulumi_migrate_migrate_project_args_doc}
class MigrateProjectArgs {
  /// Gets or sets the eTag for concurrency control.
  final pulumi.Input<String>? eTag;
  /// Gets or sets the Azure location in which migrate project is created.
  final pulumi.Input<String>? location;
  /// Name of the Azure Migrate project.
  final pulumi.Input<String>? migrateProjectName;
  /// Gets or sets the nested properties.
  final pulumi.Input<MigrateProjectProperties>? properties;
  /// Name of the Azure Resource Group that migrate project is part of.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the tags.
  final pulumi.Input<MigrateProjectTags>? tags;

  /// Creates a new [MigrateProjectArgs].
  /// [eTag] Gets or sets the eTag for concurrency control.
  /// [location] Gets or sets the Azure location in which migrate project is created.
  /// [migrateProjectName] Name of the Azure Migrate project.
  /// [properties] Gets or sets the nested properties.
  /// [resourceGroupName] Name of the Azure Resource Group that migrate project is part of.
  /// [tags] Gets or sets the tags.
  const MigrateProjectArgs({
    this.eTag,
    this.location,
    this.migrateProjectName,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eTag': ?eTag,
      'location': ?location,
      'migrateProjectName': ?migrateProjectName,
      'properties': ?pulumi.Input.mapOptionalInputValue<MigrateProjectProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?pulumi.Input.mapOptionalInputValue<MigrateProjectTags, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory MigrateProjectArgs.fromMap(Map<String, dynamic> map) {
    return MigrateProjectArgs(
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      migrateProjectName: (() { final guardedValue = map['migrateProjectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MigrateProjectProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MigrateProjectTags.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
