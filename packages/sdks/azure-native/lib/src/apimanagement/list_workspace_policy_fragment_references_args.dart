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
    required this.id,
    required this.resourceGroupName,
    required this.serviceName,
    this.skip,
    this.top,
    required this.workspaceId,
  });

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
      id: (map['id'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      skip: map['skip'] == null ? null : (map['skip']! as int).input(),
      top: map['top'] == null ? null : (map['top']! as int).input(),
      workspaceId: (map['workspaceId'] as String).input(),
    );
  }
}

