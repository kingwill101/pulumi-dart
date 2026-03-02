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
    this.agentPoolName,
    this.count,
    this.location,
    this.os,
    required this.registryName,
    required this.resourceGroupName,
    this.tags,
    this.tier,
    this.virtualNetworkSubnetResourceId,
  });

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
      agentPoolName: map['agentPoolName'] == null ? null : (map['agentPoolName']! as String).input(),
      count: map['count'] == null ? null : (map['count']! as int).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      os: map['os'] == null ? null : (map['os']! as String).input(),
      registryName: (map['registryName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      tier: map['tier'] == null ? null : (map['tier']! as String).input(),
      virtualNetworkSubnetResourceId: map['virtualNetworkSubnetResourceId'] == null ? null : (map['virtualNetworkSubnetResourceId']! as String).input(),
    );
  }
}

