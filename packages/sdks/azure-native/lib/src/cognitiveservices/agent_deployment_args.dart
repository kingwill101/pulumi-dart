// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognitiveservices_agent_deployment_args_doc}
/// The set of arguments for AgentDeployment.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_agent_deployment_args_doc}
class AgentDeploymentArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// The name of the application associated with the Cognitive Services Account
  final pulumi.Input<String> appName;
  /// The name of the deployment associated with the Cognitive Services Account
  final pulumi.Input<String?>? deploymentName;
  /// The name of Cognitive Services account's project.
  final pulumi.Input<String> projectName;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<dynamic> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [AgentDeploymentArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [appName] The name of the application associated with the Cognitive Services Account
  /// [deploymentName] The name of the deployment associated with the Cognitive Services Account
  /// [projectName] The name of Cognitive Services account's project.
  /// [properties] [Required] Additional attributes of the entity.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const AgentDeploymentArgs({
    required this.accountName,
    required this.appName,
    this.deploymentName,
    required this.projectName,
    required this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'appName': appName,
      'deploymentName': ?deploymentName,
      'projectName': projectName,
      'properties': properties,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory AgentDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return AgentDeploymentArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      appName: pulumi.Input.fromValue(map['appName'] as String),
      deploymentName: (() { final guardedValue = map['deploymentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      properties: pulumi.Input.fromValue(map['properties']),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
