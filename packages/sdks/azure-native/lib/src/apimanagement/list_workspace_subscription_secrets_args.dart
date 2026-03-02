// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_list_workspace_subscription_secrets_args_doc}
/// Arguments for listWorkspaceSubscriptionSecrets.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_list_workspace_subscription_secrets_args_doc}
class ListWorkspaceSubscriptionSecretsArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Subscription entity Identifier. The entity represents the association between a user and a product in API Management.
  final pulumi.Input<String> sid;
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [ListWorkspaceSubscriptionSecretsArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [sid] Subscription entity Identifier. The entity represents the association between a user and a product in API Management.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  ListWorkspaceSubscriptionSecretsArgs({
    required this.resourceGroupName,
    required this.serviceName,
    required this.sid,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'sid': sid,
      'workspaceId': workspaceId,
    };
  }

  factory ListWorkspaceSubscriptionSecretsArgs.fromMap(Map<String, dynamic> map) {
    return ListWorkspaceSubscriptionSecretsArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      sid: (map['sid'] as String).input(),
      workspaceId: (map['workspaceId'] as String).input(),
    );
  }
}

