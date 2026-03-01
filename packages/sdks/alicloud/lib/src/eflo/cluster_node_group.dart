// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_group_node.dart';

class ClusterNodeGroup {
  /// System Image ID
  final String? imageId;
  /// Model
  final String? machineType;
  /// Node Group Description
  final String? nodeGroupDescription;
  /// Node Group Name
  final String? nodeGroupName;
  /// Node List See `nodes` below.
  final List<ClusterNodeGroupNode>? nodes;
  /// Instance custom data. It needs to be encoded in Base64 mode, and the original data is at most 16KB.
  final String? userData;
  /// Zone ID
  final String? zoneId;

  /// Creates a new [ClusterNodeGroup].
  /// [imageId] System Image ID
  /// [machineType] Model
  /// [nodeGroupDescription] Node Group Description
  /// [nodeGroupName] Node Group Name
  /// [nodes] Node List See `nodes` below.
  /// [userData] Instance custom data. It needs to be encoded in Base64 mode, and the original data is at most 16KB.
  /// [zoneId] Zone ID
  ClusterNodeGroup({
    this.imageId,
    this.machineType,
    this.nodeGroupDescription,
    this.nodeGroupName,
    this.nodes,
    this.userData,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageId': ?imageId,
      'machineType': ?machineType,
      'nodeGroupDescription': ?nodeGroupDescription,
      'nodeGroupName': ?nodeGroupName,
      'nodes': ?nodes == null ? null : pulumi.Input.encodeList<ClusterNodeGroupNode, Map<String, dynamic>>(nodes!, (value) => value.toMap()),
      'userData': ?userData,
      'zoneId': ?zoneId,
    };
  }

  factory ClusterNodeGroup.fromMap(Map<String, dynamic> map) {
    return ClusterNodeGroup(
      imageId: map['imageId'] == null ? null : map['imageId'] as String,
      machineType: map['machineType'] == null ? null : map['machineType'] as String,
      nodeGroupDescription: map['nodeGroupDescription'] == null ? null : map['nodeGroupDescription'] as String,
      nodeGroupName: map['nodeGroupName'] == null ? null : map['nodeGroupName'] as String,
      nodes: map['nodes'] == null ? null : pulumi.Input.decodeList<ClusterNodeGroupNode>(map['nodes'], (value) => ClusterNodeGroupNode.fromMap((value as Map).cast<String, dynamic>())),
      userData: map['userData'] == null ? null : map['userData'] as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}

