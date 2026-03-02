// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_ip_allocation_policy.dart';
import 'node_group_node.dart';

/// {@template pulumi_eflo_node_group_node_group_args_doc}
/// The set of arguments for NodeGroup.
/// {@endtemplate}
/// {@macro pulumi_eflo_node_group_node_group_args_doc}
class NodeGroupArgs {
  /// Az
  final pulumi.Input<String> az;
  /// Cluster ID
  final pulumi.Input<String> clusterId;
  /// Whether to allow skipping failed nodes. Default value: False
  final pulumi.Input<bool>? ignoreFailedNodeTasks;
  /// Image ID. You can modify the image ID since v1.252.0.
  final pulumi.Input<String> imageId;
  /// IP address combination policy: only one policy type can be selected for each policy, and multiple policies can be combined. See `ip_allocation_policy` below.
  final pulumi.Input<List<NodeGroupIpAllocationPolicy>>? ipAllocationPolicies;
  /// key pair name
  final pulumi.Input<String>? keyPairName;
  /// Login Password
  final pulumi.Input<String>? loginPassword;
  /// Machine type
  final pulumi.Input<String> machineType;
  /// NodeGroupDescription
  final pulumi.Input<String>? nodeGroupDescription;
  /// The name of the resource
  final pulumi.Input<String> nodeGroupName;
  /// Node List See `nodes` below.
  final pulumi.Input<List<NodeGroupNode>>? nodes;
  /// Custom Data
  final pulumi.Input<String>? userData;
  /// Cluster subnet list
  final pulumi.Input<List<String>>? vpdSubnets;
  /// Zone ID of the switch
  final pulumi.Input<String>? vswitchZoneId;
  /// Zone ID
  final pulumi.Input<String>? zoneId;

  /// Creates a new [NodeGroupArgs].
  /// [az] Az
  /// [clusterId] Cluster ID
  /// [ignoreFailedNodeTasks] Whether to allow skipping failed nodes. Default value: False
  /// [imageId] Image ID. You can modify the image ID since v1.252.0.
  /// [ipAllocationPolicies] IP address combination policy: only one policy type can be selected for each policy, and multiple policies can be combined. See `ip_allocation_policy` below.
  /// [keyPairName] key pair name
  /// [loginPassword] Login Password
  /// [machineType] Machine type
  /// [nodeGroupDescription] NodeGroupDescription
  /// [nodeGroupName] The name of the resource
  /// [nodes] Node List See `nodes` below.
  /// [userData] Custom Data
  /// [vpdSubnets] Cluster subnet list
  /// [vswitchZoneId] Zone ID of the switch
  /// [zoneId] Zone ID
  NodeGroupArgs({
    required this.az,
    required this.clusterId,
    this.ignoreFailedNodeTasks,
    required this.imageId,
    this.ipAllocationPolicies,
    this.keyPairName,
    this.loginPassword,
    required this.machineType,
    this.nodeGroupDescription,
    required this.nodeGroupName,
    this.nodes,
    this.userData,
    this.vpdSubnets,
    this.vswitchZoneId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'az': az,
      'clusterId': clusterId,
      'ignoreFailedNodeTasks': ?ignoreFailedNodeTasks,
      'imageId': imageId,
      'ipAllocationPolicies': ?pulumi.Input.mapOptionalInputValue<List<NodeGroupIpAllocationPolicy>, List<Map<String, dynamic>>>(ipAllocationPolicies, (value) => pulumi.Input.encodeList<NodeGroupIpAllocationPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keyPairName': ?keyPairName,
      'loginPassword': ?loginPassword,
      'machineType': machineType,
      'nodeGroupDescription': ?nodeGroupDescription,
      'nodeGroupName': nodeGroupName,
      'nodes': ?pulumi.Input.mapOptionalInputValue<List<NodeGroupNode>, List<Map<String, dynamic>>>(nodes, (value) => pulumi.Input.encodeList<NodeGroupNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userData': ?userData,
      'vpdSubnets': ?vpdSubnets,
      'vswitchZoneId': ?vswitchZoneId,
      'zoneId': ?zoneId,
    };
  }

  factory NodeGroupArgs.fromMap(Map<String, dynamic> map) {
    return NodeGroupArgs(
      az: (map['az'] as String).input(),
      clusterId: (map['clusterId'] as String).input(),
      ignoreFailedNodeTasks: map['ignoreFailedNodeTasks'] == null ? null : (map['ignoreFailedNodeTasks'] as bool).input(),
      imageId: (map['imageId'] as String).input(),
      ipAllocationPolicies: map['ipAllocationPolicies'] == null ? null : (pulumi.Input.decodeList<NodeGroupIpAllocationPolicy>(map['ipAllocationPolicies'], (value) => NodeGroupIpAllocationPolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      keyPairName: map['keyPairName'] == null ? null : (map['keyPairName'] as String).input(),
      loginPassword: map['loginPassword'] == null ? null : (map['loginPassword'] as String).input(),
      machineType: (map['machineType'] as String).input(),
      nodeGroupDescription: map['nodeGroupDescription'] == null ? null : (map['nodeGroupDescription'] as String).input(),
      nodeGroupName: (map['nodeGroupName'] as String).input(),
      nodes: map['nodes'] == null ? null : (pulumi.Input.decodeList<NodeGroupNode>(map['nodes'], (value) => NodeGroupNode.fromMap((value as Map).cast<String, dynamic>()))).input(),
      userData: map['userData'] == null ? null : (map['userData'] as String).input(),
      vpdSubnets: map['vpdSubnets'] == null ? null : ((map['vpdSubnets'] as List).cast<String>()).input(),
      vswitchZoneId: map['vswitchZoneId'] == null ? null : (map['vswitchZoneId'] as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId'] as String).input(),
    );
  }
}

