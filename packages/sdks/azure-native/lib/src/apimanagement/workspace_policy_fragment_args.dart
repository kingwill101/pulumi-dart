// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_workspace_policy_fragment_args_doc}
/// The set of arguments for WorkspacePolicyFragment.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_workspace_policy_fragment_args_doc}
class WorkspacePolicyFragmentArgs {
  /// Policy fragment description.
  final pulumi.Input<String>? description;
  /// Format of the policy fragment content.
  final pulumi.Input<String>? format;
  /// A resource identifier.
  final pulumi.Input<String>? id;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Contents of the policy fragment.
  final pulumi.Input<String> value;
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspacePolicyFragmentArgs].
  /// [description] Policy fragment description.
  /// [format] Format of the policy fragment content.
  /// [id] A resource identifier.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [value] Contents of the policy fragment.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  WorkspacePolicyFragmentArgs({
    this.description,
    this.format,
    this.id,
    required this.resourceGroupName,
    required this.serviceName,
    required this.value,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'format': ?format,
      'id': ?id,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'value': value,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspacePolicyFragmentArgs.fromMap(Map<String, dynamic> map) {
    return WorkspacePolicyFragmentArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      format: map['format'] == null ? null : (map['format'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      value: (map['value'] as String).input(),
      workspaceId: (map['workspaceId'] as String).input(),
    );
  }
}

