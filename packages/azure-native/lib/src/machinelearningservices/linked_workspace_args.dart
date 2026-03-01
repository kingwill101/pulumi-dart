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
    String? linkName,
    String? name,
    LinkedWorkspaceProps? properties,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      linkName = pulumi.Input.asOptionalInput<String>(linkName),
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asOptionalInput<LinkedWorkspaceProps>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      linkName: map['linkName'] == null ? null : map['linkName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      properties: map['properties'] == null ? null : LinkedWorkspaceProps.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

