// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_list_workspace_policy_fragment_references_args_doc}
/// Arguments for listWorkspacePolicyFragmentReferences.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_list_workspace_policy_fragment_references_args_doc}
class ListWorkspacePolicyFragmentReferencesArgs {
  /// A resource identifier.
  final pulumi.Input<String> id;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Number of records to skip.
  final pulumi.Input<int>? skip;
  /// Number of records to return.
  final pulumi.Input<int>? top;
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [ListWorkspacePolicyFragmentReferencesArgs].
  /// [id] A resource identifier.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [skip] Number of records to skip.
  /// [top] Number of records to return.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  ListWorkspacePolicyFragmentReferencesArgs({
    required pulumi.Output<String> id,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
    pulumi.Output<int>? skip,
    pulumi.Output<int>? top,
    required pulumi.Output<String> workspaceId,
  }) :
      id = pulumi.Input.asInput<String>(id),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      skip = pulumi.Input.asOptionalInput<int>(skip),
      top = pulumi.Input.asOptionalInput<int>(top),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'skip': ?skip,
      'top': ?top,
      'workspaceId': workspaceId,
    };
  }

  factory ListWorkspacePolicyFragmentReferencesArgs.fromMap(Map<String, dynamic> map) {
    return ListWorkspacePolicyFragmentReferencesArgs(
      id: pulumi.Output.create<String>(map['id'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      skip: map['skip'] == null ? null : pulumi.Output.create<int>(map['skip'] as int),
      top: map['top'] == null ? null : pulumi.Output.create<int>(map['top'] as int),
      workspaceId: pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

