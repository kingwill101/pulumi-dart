// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosted_agent_deployment.dart';

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
  final pulumi.Input<String>? deploymentName;
  /// The name of Cognitive Services account's project.
  final pulumi.Input<String> projectName;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<HostedAgentDeployment> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [AgentDeploymentArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [appName] The name of the application associated with the Cognitive Services Account
  /// [deploymentName] The name of the deployment associated with the Cognitive Services Account
  /// [projectName] The name of Cognitive Services account's project.
  /// [properties] [Required] Additional attributes of the entity.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  AgentDeploymentArgs({
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
      'properties': pulumi.Input.mapInputValue<HostedAgentDeployment, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory AgentDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return AgentDeploymentArgs(
      accountName: (map['accountName'] as String).input(),
      appName: (map['appName'] as String).input(),
      deploymentName: map['deploymentName'] == null ? null : (map['deploymentName'] as String).input(),
      projectName: (map['projectName'] as String).input(),
      properties: (HostedAgentDeployment.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

