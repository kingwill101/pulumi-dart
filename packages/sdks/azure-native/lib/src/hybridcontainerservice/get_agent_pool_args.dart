// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridcontainerservice_get_agent_pool_args_doc}
/// Arguments for getAgentPool.
/// {@endtemplate}
/// {@macro pulumi_hybridcontainerservice_get_agent_pool_args_doc}
class GetAgentPoolArgs {
  /// Parameter for the name of the agent pool in the provisioned cluster
  final pulumi.Input<String> agentPoolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Parameter for the name of the provisioned cluster
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetAgentPoolArgs].
  /// [agentPoolName] Parameter for the name of the agent pool in the provisioned cluster
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] Parameter for the name of the provisioned cluster
  GetAgentPoolArgs({
    required pulumi.Output<String> agentPoolName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      agentPoolName = pulumi.Input.asInput<String>(agentPoolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentPoolName': agentPoolName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetAgentPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentPoolArgs(
      agentPoolName: pulumi.Output.create<String>(map['agentPoolName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

