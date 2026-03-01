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
  NodeGroupState({
    pulumi.Output<String>? az,
    pulumi.Output<String>? clusterId,
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? ignoreFailedNodeTasks,
    pulumi.Output<String>? imageId,
    pulumi.Output<List<NodeGroupIpAllocationPolicy>>? ipAllocationPolicies,
    pulumi.Output<String>? keyPairName,
    pulumi.Output<String>? loginPassword,
    pulumi.Output<String>? machineType,
    pulumi.Output<String>? nodeGroupDescription,
    pulumi.Output<String>? nodeGroupId,
    pulumi.Output<String>? nodeGroupName,
    pulumi.Output<List<NodeGroupNode>>? nodes,
    pulumi.Output<String>? userData,
    pulumi.Output<List<String>>? vpdSubnets,
    pulumi.Output<String>? vswitchZoneId,
    pulumi.Output<String>? zoneId,
  }) :
      az = pulumi.Input.asOptionalInput<String>(az),
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      ignoreFailedNodeTasks = pulumi.Input.asOptionalInput<bool>(ignoreFailedNodeTasks),
      imageId = pulumi.Input.asOptionalInput<String>(imageId),
      ipAllocationPolicies = pulumi.Input.asOptionalInput<List<NodeGroupIpAllocationPolicy>>(ipAllocationPolicies),
      keyPairName = pulumi.Input.asOptionalInput<String>(keyPairName),
      loginPassword = pulumi.Input.asOptionalInput<String>(loginPassword),
      machineType = pulumi.Input.asOptionalInput<String>(machineType),
      nodeGroupDescription = pulumi.Input.asOptionalInput<String>(nodeGroupDescription),
      nodeGroupId = pulumi.Input.asOptionalInput<String>(nodeGroupId),
      nodeGroupName = pulumi.Input.asOptionalInput<String>(nodeGroupName),
      nodes = pulumi.Input.asOptionalInput<List<NodeGroupNode>>(nodes),
      userData = pulumi.Input.asOptionalInput<String>(userData),
      vpdSubnets = pulumi.Input.asOptionalInput<List<String>>(vpdSubnets),
      vswitchZoneId = pulumi.Input.asOptionalInput<String>(vswitchZoneId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      az: map['az'] == null ? null : pulumi.Output.create<String>(map['az'] as String),
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      ignoreFailedNodeTasks: map['ignoreFailedNodeTasks'] == null ? null : pulumi.Output.create<bool>(map['ignoreFailedNodeTasks'] as bool),
      imageId: map['imageId'] == null ? null : pulumi.Output.create<String>(map['imageId'] as String),
      ipAllocationPolicies: map['ipAllocationPolicies'] == null ? null : pulumi.Output.create<List<NodeGroupIpAllocationPolicy>>(pulumi.Input.decodeList<NodeGroupIpAllocationPolicy>(map['ipAllocationPolicies'], (value) => NodeGroupIpAllocationPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      keyPairName: map['keyPairName'] == null ? null : pulumi.Output.create<String>(map['keyPairName'] as String),
      loginPassword: map['loginPassword'] == null ? null : pulumi.Output.create<String>(map['loginPassword'] as String),
      machineType: map['machineType'] == null ? null : pulumi.Output.create<String>(map['machineType'] as String),
      nodeGroupDescription: map['nodeGroupDescription'] == null ? null : pulumi.Output.create<String>(map['nodeGroupDescription'] as String),
      nodeGroupId: map['nodeGroupId'] == null ? null : pulumi.Output.create<String>(map['nodeGroupId'] as String),
      nodeGroupName: map['nodeGroupName'] == null ? null : pulumi.Output.create<String>(map['nodeGroupName'] as String),
      nodes: map['nodes'] == null ? null : pulumi.Output.create<List<NodeGroupNode>>(pulumi.Input.decodeList<NodeGroupNode>(map['nodes'], (value) => NodeGroupNode.fromMap((value as Map).cast<String, dynamic>()))),
      userData: map['userData'] == null ? null : pulumi.Output.create<String>(map['userData'] as String),
      vpdSubnets: map['vpdSubnets'] == null ? null : pulumi.Output.create<List<String>>((map['vpdSubnets'] as List).cast<String>()),
      vswitchZoneId: map['vswitchZoneId'] == null ? null : pulumi.Output.create<String>(map['vswitchZoneId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

