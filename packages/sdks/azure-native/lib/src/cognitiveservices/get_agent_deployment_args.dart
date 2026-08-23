// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognitiveservices_get_agent_deployment_args_doc}
/// Arguments for getAgentDeployment.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_get_agent_deployment_args_doc}
class GetAgentDeploymentArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// The name of the application associated with the Cognitive Services Account
  final pulumi.Input<String> appName;
  /// The name of the deployment associated with the Cognitive Services Account
  final pulumi.Input<String> deploymentName;
  /// The name of Cognitive Services account's project.
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAgentDeploymentArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [appName] The name of the application associated with the Cognitive Services Account
  /// [deploymentName] The name of the deployment associated with the Cognitive Services Account
  /// [projectName] The name of Cognitive Services account's project.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetAgentDeploymentArgs({
    required this.accountName,
    required this.appName,
    required this.deploymentName,
    required this.projectName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'appName': appName,
      'deploymentName': deploymentName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAgentDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentDeploymentArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      appName: pulumi.Input.fromValue(map['appName'] as String),
      deploymentName: pulumi.Input.fromValue(map['deploymentName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
