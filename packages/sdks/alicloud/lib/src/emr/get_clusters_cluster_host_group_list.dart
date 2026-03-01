// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_cluster_host_group_list_node.dart';

class GetClustersClusterHostGroupList {
  /// Bandwidth.
  final String bandWidth;
  /// Payment Type.
  final String chargeType;
  /// The number of CPU cores.
  final int cpuCore;
  /// Data disk capacity.
  final int diskCapacity;
  /// The number of data disks.
  final int diskCount;
  /// System disk type:
  final String diskType;
  /// The current operation type of the machine Group:
  final String hostGroupChangeType;
  /// The ID of the machine group.
  final String hostGroupId;
  /// The name of the machine group.
  final String hostGroupName;
  /// Role of host in cluster:
  final String hostGroupType;
  /// Machine Group instance.
  final String instanceType;
  /// Memory size.
  final int memoryCapacity;
  /// The number of machine group nodes.
  final int nodeCount;
  /// Machine node.
  final List<GetClustersClusterHostGroupListNode> nodes;
  /// Package year and month time (days).
  final String period;

  /// Creates a new [GetClustersClusterHostGroupList].
  /// [bandWidth] Bandwidth.
  /// [chargeType] Payment Type.
  /// [cpuCore] The number of CPU cores.
  /// [diskCapacity] Data disk capacity.
  /// [diskCount] The number of data disks.
  /// [diskType] System disk type:
  /// [hostGroupChangeType] The current operation type of the machine Group:
  /// [hostGroupId] The ID of the machine group.
  /// [hostGroupName] The name of the machine group.
  /// [hostGroupType] Role of host in cluster:
  /// [instanceType] Machine Group instance.
  /// [memoryCapacity] Memory size.
  /// [nodeCount] The number of machine group nodes.
  /// [nodes] Machine node.
  /// [period] Package year and month time (days).
  GetClustersClusterHostGroupList({
    required this.bandWidth,
    required this.chargeType,
    required this.cpuCore,
    required this.diskCapacity,
    required this.diskCount,
    required this.diskType,
    required this.hostGroupChangeType,
    required this.hostGroupId,
    required this.hostGroupName,
    required this.hostGroupType,
    required this.instanceType,
    required this.memoryCapacity,
    required this.nodeCount,
    required this.nodes,
    required this.period,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandWidth': bandWidth,
      'chargeType': chargeType,
      'cpuCore': cpuCore,
      'diskCapacity': diskCapacity,
      'diskCount': diskCount,
      'diskType': diskType,
      'hostGroupChangeType': hostGroupChangeType,
      'hostGroupId': hostGroupId,
      'hostGroupName': hostGroupName,
      'hostGroupType': hostGroupType,
      'instanceType': instanceType,
      'memoryCapacity': memoryCapacity,
      'nodeCount': nodeCount,
      'nodes': pulumi.Input.encodeList<GetClustersClusterHostGroupListNode, Map<String, dynamic>>(nodes, (value) => value.toMap()),
      'period': period,
    };
  }

  factory GetClustersClusterHostGroupList.fromMap(Map<String, dynamic> map) {
    return GetClustersClusterHostGroupList(
      bandWidth: map['bandWidth'] as String,
      chargeType: map['chargeType'] as String,
      cpuCore: map['cpuCore'] as int,
      diskCapacity: map['diskCapacity'] as int,
      diskCount: map['diskCount'] as int,
      diskType: map['diskType'] as String,
      hostGroupChangeType: map['hostGroupChangeType'] as String,
      hostGroupId: map['hostGroupId'] as String,
      hostGroupName: map['hostGroupName'] as String,
      hostGroupType: map['hostGroupType'] as String,
      instanceType: map['instanceType'] as String,
      memoryCapacity: map['memoryCapacity'] as int,
      nodeCount: map['nodeCount'] as int,
      nodes: pulumi.Input.decodeList<GetClustersClusterHostGroupListNode>(map['nodes'], (value) => GetClustersClusterHostGroupListNode.fromMap((value as Map).cast<String, dynamic>())),
      period: map['period'] as String,
    );
  }
}

