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
    this.eTag,
    this.groupName,
    required this.projectName,
    required this.properties,
    required this.resourceGroupName,
  });

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
      eTag: map['eTag'] == null ? null : (map['eTag']! as String).input(),
      groupName: map['groupName'] == null ? null : (map['groupName']! as String).input(),
      projectName: (map['projectName'] as String).input(),
      properties: (GroupProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

