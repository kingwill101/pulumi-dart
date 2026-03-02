// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_workspace_props.dart';

/// {@template pulumi_machinelearningservices_linked_workspace_args_doc}
/// The set of arguments for LinkedWorkspace.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_linked_workspace_args_doc}
class LinkedWorkspaceArgs {
  /// Friendly name of the linked workspace
  final pulumi.Input<String>? linkName;
  /// Friendly name of the linked workspace
  final pulumi.Input<String>? name;
  /// LinkedWorkspace specific properties.
  final pulumi.Input<LinkedWorkspaceProps>? properties;
  /// Name of the resource group in which workspace is located.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [LinkedWorkspaceArgs].
  /// [linkName] Friendly name of the linked workspace
  /// [name] Friendly name of the linked workspace
  /// [properties] LinkedWorkspace specific properties.
  /// [resourceGroupName] Name of the resource group in which workspace is located.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  LinkedWorkspaceArgs({
    this.linkName,
    this.name,
    this.properties,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkName': ?linkName,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<LinkedWorkspaceProps, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory LinkedWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return LinkedWorkspaceArgs(
      linkName: map['linkName'] == null ? null : (map['linkName']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      properties: map['properties'] == null ? null : (LinkedWorkspaceProps.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

