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
  MigrateProjectArgs({
    pulumi.Output<String>? eTag,
    pulumi.Output<String>? location,
    pulumi.Output<String>? migrateProjectName,
    pulumi.Output<MigrateProjectProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<MigrateProjectTags>? tags,
  }) :
      eTag = pulumi.Input.asOptionalInput<String>(eTag),
      location = pulumi.Input.asOptionalInput<String>(location),
      migrateProjectName = pulumi.Input.asOptionalInput<String>(migrateProjectName),
      properties = pulumi.Input.asOptionalInput<MigrateProjectProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<MigrateProjectTags>(tags);

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
      eTag: map['eTag'] == null ? null : pulumi.Output.create<String>(map['eTag'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      migrateProjectName: map['migrateProjectName'] == null ? null : pulumi.Output.create<String>(map['migrateProjectName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<MigrateProjectProperties>(MigrateProjectProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<MigrateProjectTags>(MigrateProjectTags.fromMap((map['tags'] as Map).cast<String, dynamic>())),
    );
  }
}

