// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerregistry_get_agent_pool_args_doc}
/// Arguments for getAgentPool.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_get_agent_pool_args_doc}
class GetAgentPoolArgs {
  /// The name of the agent pool.
  final pulumi.Input<String> agentPoolName;
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group to which the container registry belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAgentPoolArgs].
  /// [agentPoolName] The name of the agent pool.
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group to which the container registry belongs.
  GetAgentPoolArgs({
    required String agentPoolName,
    required String registryName,
    required String resourceGroupName,
  }) :
      agentPoolName = pulumi.Input.asInput<String>(agentPoolName),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentPoolName': agentPoolName,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAgentPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentPoolArgs(
      agentPoolName: map['agentPoolName'] as String,
      registryName: map['registryName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

