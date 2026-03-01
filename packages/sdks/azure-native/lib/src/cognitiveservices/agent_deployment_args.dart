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
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> appName,
    pulumi.Output<String>? deploymentName,
    required pulumi.Output<String> projectName,
    required pulumi.Output<HostedAgentDeployment> properties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      appName = pulumi.Input.asInput<String>(appName),
      deploymentName = pulumi.Input.asOptionalInput<String>(deploymentName),
      projectName = pulumi.Input.asInput<String>(projectName),
      properties = pulumi.Input.asInput<HostedAgentDeployment>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      appName: pulumi.Output.create<String>(map['appName'] as String),
      deploymentName: map['deploymentName'] == null ? null : pulumi.Output.create<String>(map['deploymentName'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      properties: pulumi.Output.create<HostedAgentDeployment>(HostedAgentDeployment.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

