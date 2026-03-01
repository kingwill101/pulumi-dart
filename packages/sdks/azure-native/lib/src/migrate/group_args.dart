// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_properties.dart';

/// {@template pulumi_migrate_group_args_doc}
/// The set of arguments for Group.
/// {@endtemplate}
/// {@macro pulumi_migrate_group_args_doc}
class GroupArgs {
  /// For optimistic concurrency control.
  final pulumi.Input<String>? eTag;
  /// Unique name of a group within a project.
  final pulumi.Input<String>? groupName;
  /// Name of the Azure Migrate project.
  final pulumi.Input<String> projectName;
  /// Properties of the group.
  final pulumi.Input<GroupProperties> properties;
  /// Name of the Azure Resource Group that project is part of.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GroupArgs].
  /// [eTag] For optimistic concurrency control.
  /// [groupName] Unique name of a group within a project.
  /// [projectName] Name of the Azure Migrate project.
  /// [properties] Properties of the group.
  /// [resourceGroupName] Name of the Azure Resource Group that project is part of.
  GroupArgs({
    pulumi.Output<String>? eTag,
    pulumi.Output<String>? groupName,
    required pulumi.Output<String> projectName,
    required pulumi.Output<GroupProperties> properties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      eTag = pulumi.Input.asOptionalInput<String>(eTag),
      groupName = pulumi.Input.asOptionalInput<String>(groupName),
      projectName = pulumi.Input.asInput<String>(projectName),
      properties = pulumi.Input.asInput<GroupProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eTag': ?eTag,
      'groupName': ?groupName,
      'projectName': projectName,
      'properties': pulumi.Input.mapInputValue<GroupProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
      eTag: map['eTag'] == null ? null : pulumi.Output.create<String>(map['eTag'] as String),
      groupName: map['groupName'] == null ? null : pulumi.Output.create<String>(map['groupName'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      properties: pulumi.Output.create<GroupProperties>(GroupProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

