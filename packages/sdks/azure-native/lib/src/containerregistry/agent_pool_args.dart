// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerregistry_agent_pool_args_doc}
/// The set of arguments for AgentPool.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_agent_pool_args_doc}
class AgentPoolArgs {
  /// The name of the agent pool.
  final pulumi.Input<String>? agentPoolName;
  /// The count of agent machine
  final pulumi.Input<int>? count;
  /// The location of the resource. This cannot be changed after the resource is created.
  final pulumi.Input<String>? location;
  /// The OS of agent machine
  final pulumi.Input<String>? os;
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group to which the container registry belongs.
  final pulumi.Input<String> resourceGroupName;
  /// The tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Tier of agent machine
  final pulumi.Input<String>? tier;
  /// The Virtual Network Subnet Resource Id of the agent machine
  final pulumi.Input<String>? virtualNetworkSubnetResourceId;

  /// Creates a new [AgentPoolArgs].
  /// [agentPoolName] The name of the agent pool.
  /// [count] The count of agent machine
  /// [location] The location of the resource. This cannot be changed after the resource is created.
  /// [os] The OS of agent machine
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group to which the container registry belongs.
  /// [tags] The tags of the resource.
  /// [tier] The Tier of agent machine
  /// [virtualNetworkSubnetResourceId] The Virtual Network Subnet Resource Id of the agent machine
  AgentPoolArgs({
    pulumi.Output<String>? agentPoolName,
    pulumi.Output<int>? count,
    pulumi.Output<String>? location,
    pulumi.Output<String>? os,
    required pulumi.Output<String> registryName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? tier,
    pulumi.Output<String>? virtualNetworkSubnetResourceId,
  }) :
      agentPoolName = pulumi.Input.asOptionalInput<String>(agentPoolName),
      count = pulumi.Input.asOptionalInput<int>(count),
      location = pulumi.Input.asOptionalInput<String>(location),
      os = pulumi.Input.asOptionalInput<String>(os),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tier = pulumi.Input.asOptionalInput<String>(tier),
      virtualNetworkSubnetResourceId = pulumi.Input.asOptionalInput<String>(virtualNetworkSubnetResourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentPoolName': ?agentPoolName,
      'count': ?count,
      'location': ?location,
      'os': ?os,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'tier': ?tier,
      'virtualNetworkSubnetResourceId': ?virtualNetworkSubnetResourceId,
    };
  }

  factory AgentPoolArgs.fromMap(Map<String, dynamic> map) {
    return AgentPoolArgs(
      agentPoolName: map['agentPoolName'] == null ? null : pulumi.Output.create<String>(map['agentPoolName'] as String),
      count: map['count'] == null ? null : pulumi.Output.create<int>(map['count'] as int),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      os: map['os'] == null ? null : pulumi.Output.create<String>(map['os'] as String),
      registryName: pulumi.Output.create<String>(map['registryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tier: map['tier'] == null ? null : pulumi.Output.create<String>(map['tier'] as String),
      virtualNetworkSubnetResourceId: map['virtualNetworkSubnetResourceId'] == null ? null : pulumi.Output.create<String>(map['virtualNetworkSubnetResourceId'] as String),
    );
  }
}

