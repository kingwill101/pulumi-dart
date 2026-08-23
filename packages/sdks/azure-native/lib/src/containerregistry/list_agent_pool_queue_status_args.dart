// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerregistry_list_agent_pool_queue_status_args_doc}
/// Arguments for listAgentPoolQueueStatus.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_list_agent_pool_queue_status_args_doc}
class ListAgentPoolQueueStatusArgs {
  /// The name of the agent pool.
  final pulumi.Input<String> agentPoolName;
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group to which the container registry belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListAgentPoolQueueStatusArgs].
  /// [agentPoolName] The name of the agent pool.
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group to which the container registry belongs.
  const ListAgentPoolQueueStatusArgs({
    required this.agentPoolName,
    required this.registryName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentPoolName': agentPoolName,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListAgentPoolQueueStatusArgs.fromMap(Map<String, dynamic> map) {
    return ListAgentPoolQueueStatusArgs(
      agentPoolName: pulumi.Input.fromValue(map['agentPoolName'] as String),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
