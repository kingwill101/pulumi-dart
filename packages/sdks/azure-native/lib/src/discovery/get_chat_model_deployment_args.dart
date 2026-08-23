// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discovery_get_chat_model_deployment_args_doc}
/// Arguments for getChatModelDeployment.
/// {@endtemplate}
/// {@macro pulumi_discovery_get_chat_model_deployment_args_doc}
class GetChatModelDeploymentArgs {
  /// The name of the ChatModelDeployment
  final pulumi.Input<String> chatModelDeploymentName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Workspace
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetChatModelDeploymentArgs].
  /// [chatModelDeploymentName] The name of the ChatModelDeployment
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the Workspace
  const GetChatModelDeploymentArgs({
    required this.chatModelDeploymentName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatModelDeploymentName': chatModelDeploymentName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetChatModelDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GetChatModelDeploymentArgs(
      chatModelDeploymentName: pulumi.Input.fromValue(map['chatModelDeploymentName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
