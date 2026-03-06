// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_ip_allocation_policy.dart';
import 'node_group_node.dart';

/// Input properties used for looking up and filtering NodeGroup resources.
class NodeGroupState {
  /// Az
  final pulumi.Input<String>? az;
  /// Cluster ID
  final pulumi.Input<String>? clusterId;
  /// Create time
  final pulumi.Input<String>? createTime;
  /// Whether to allow skipping failed nodes. Default value: False
  final pulumi.Input<bool>? ignoreFailedNodeTasks;
  /// Image ID. You can modify the image ID since v1.252.0.
  final pulumi.Input<String>? imageId;
  /// IP address combination policy: only one policy type can be selected for each policy, and multiple policies can be combined. See `ip_allocation_policy` below.
  final pulumi.Input<List<NodeGroupIpAllocationPolicy>>? ipAllocationPolicies;
  /// key pair name
  final pulumi.Input<String>? keyPairName;
  /// Login Password
  final pulumi.Input<String>? loginPassword;
  /// Machine type
  final pulumi.Input<String>? machineType;
  /// NodeGroupDescription
  final pulumi.Input<String>? nodeGroupDescription;
  /// The first ID of the resource
  final pulumi.Input<String>? nodeGroupId;
  /// The name of the resource
  final pulumi.Input<String>? nodeGroupName;
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

  /// Creates a new [NodeGroupState].
  /// [az] Az
  /// [clusterId] Cluster ID
  /// [createTime] Create time
  /// [ignoreFailedNodeTasks] Whether to allow skipping failed nodes. Default value: False
  /// [imageId] Image ID. You can modify the image ID since v1.252.0.
  /// [ipAllocationPolicies] IP address combination policy: only one policy type can be selected for each policy, and multiple policies can be combined. See `ip_allocation_policy` below.
  /// [keyPairName] key pair name
  /// [loginPassword] Login Password
  /// [machineType] Machine type
  /// [nodeGroupDescription] NodeGroupDescription
  /// [nodeGroupId] The first ID of the resource
  /// [nodeGroupName] The name of the resource
  /// [nodes] Node List See `nodes` below.
  /// [userData] Custom Data
  /// [vpdSubnets] Cluster subnet list
  /// [vswitchZoneId] Zone ID of the switch
  /// [zoneId] Zone ID
  const NodeGroupState({
    this.az,
    this.clusterId,
    this.createTime,
    this.ignoreFailedNodeTasks,
    this.imageId,
    this.ipAllocationPolicies,
    this.keyPairName,
    this.loginPassword,
    this.machineType,
    this.nodeGroupDescription,
    this.nodeGroupId,
    this.nodeGroupName,
    this.nodes,
    this.userData,
    this.vpdSubnets,
    this.vswitchZoneId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'az': ?az,
      'clusterId': ?clusterId,
      'createTime': ?createTime,
      'ignoreFailedNodeTasks': ?ignoreFailedNodeTasks,
      'imageId': ?imageId,
      'ipAllocationPolicies': ?pulumi.Input.mapOptionalInputValue<List<NodeGroupIpAllocationPolicy>, List<Map<String, dynamic>>>(ipAllocationPolicies, (value) => pulumi.Input.encodeList<NodeGroupIpAllocationPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keyPairName': ?keyPairName,
      'loginPassword': ?loginPassword,
      'machineType': ?machineType,
      'nodeGroupDescription': ?nodeGroupDescription,
      'nodeGroupId': ?nodeGroupId,
      'nodeGroupName': ?nodeGroupName,
      'nodes': ?pulumi.Input.mapOptionalInputValue<List<NodeGroupNode>, List<Map<String, dynamic>>>(nodes, (value) => pulumi.Input.encodeList<NodeGroupNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userData': ?userData,
      'vpdSubnets': ?vpdSubnets,
      'vswitchZoneId': ?vswitchZoneId,
      'zoneId': ?zoneId,
    };
  }

  factory NodeGroupState.fromMap(Map<String, dynamic> map) {
    return NodeGroupState(
      az: (() { final guardedValue = map['az']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ignoreFailedNodeTasks: (() { final guardedValue = map['ignoreFailedNodeTasks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAllocationPolicies: (() { final guardedValue = map['ipAllocationPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeGroupIpAllocationPolicy>(guardedValue, (value) => NodeGroupIpAllocationPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      keyPairName: (() { final guardedValue = map['keyPairName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loginPassword: (() { final guardedValue = map['loginPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeGroupDescription: (() { final guardedValue = map['nodeGroupDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeGroupId: (() { final guardedValue = map['nodeGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeGroupName: (() { final guardedValue = map['nodeGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodes: (() { final guardedValue = map['nodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeGroupNode>(guardedValue, (value) => NodeGroupNode.fromMap((value as Map).cast<String, dynamic>()))); })(),
      userData: (() { final guardedValue = map['userData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpdSubnets: (() { final guardedValue = map['vpdSubnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vswitchZoneId: (() { final guardedValue = map['vswitchZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

