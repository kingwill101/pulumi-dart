// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_properties.dart';

/// {@template pulumi_migrate_project_args_doc}
/// The set of arguments for Project.
/// {@endtemplate}
/// {@macro pulumi_migrate_project_args_doc}
class ProjectArgs {
  /// For optimistic concurrency control.
  final pulumi.Input<String>? eTag;
  /// Azure location in which project is created.
  final pulumi.Input<String>? location;
  /// Name of the Azure Migrate project.
  final pulumi.Input<String>? projectName;
  /// Properties of the project.
  final pulumi.Input<ProjectProperties>? properties;
  /// Name of the Azure Resource Group that project is part of.
  final pulumi.Input<String> resourceGroupName;
  /// Tags provided by Azure Tagging service.
  final pulumi.Input<dynamic>? tags;

  /// Creates a new [ProjectArgs].
  /// [eTag] For optimistic concurrency control.
  /// [location] Azure location in which project is created.
  /// [projectName] Name of the Azure Migrate project.
  /// [properties] Properties of the project.
  /// [resourceGroupName] Name of the Azure Resource Group that project is part of.
  /// [tags] Tags provided by Azure Tagging service.
  ProjectArgs({
    String? eTag,
    String? location,
    String? projectName,
    ProjectProperties? properties,
    required String resourceGroupName,
    dynamic tags,
  }) :
      eTag = pulumi.Input.asOptionalInput<String>(eTag),
      location = pulumi.Input.asOptionalInput<String>(location),
      projectName = pulumi.Input.asOptionalInput<String>(projectName),
      properties = pulumi.Input.asOptionalInput<ProjectProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<dynamic>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eTag': ?eTag,
      'location': ?location,
      'projectName': ?projectName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ProjectProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ProjectArgs.fromMap(Map<String, dynamic> map) {
    return ProjectArgs(
      eTag: map['eTag'] == null ? null : map['eTag'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      projectName: map['projectName'] == null ? null : map['projectName'] as String,
      properties: map['properties'] == null ? null : ProjectProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : map['tags'],
    );
  }
}

