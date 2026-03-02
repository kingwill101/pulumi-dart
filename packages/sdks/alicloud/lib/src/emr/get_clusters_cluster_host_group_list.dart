// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_cluster_host_group_list_node.dart';

class GetClustersClusterHostGroupList {
  /// Bandwidth.
  final pulumi.Input<String> bandWidth;
  /// Payment Type.
  final pulumi.Input<String> chargeType;
  /// The number of CPU cores.
  final pulumi.Input<int> cpuCore;
  /// Data disk capacity.
  final pulumi.Input<int> diskCapacity;
  /// The number of data disks.
  final pulumi.Input<int> diskCount;
  /// System disk type:
  final pulumi.Input<String> diskType;
  /// The current operation type of the machine Group:
  final pulumi.Input<String> hostGroupChangeType;
  /// The ID of the machine group.
  final pulumi.Input<String> hostGroupId;
  /// The name of the machine group.
  final pulumi.Input<String> hostGroupName;
  /// Role of host in cluster:
  final pulumi.Input<String> hostGroupType;
  /// Machine Group instance.
  final pulumi.Input<String> instanceType;
  /// Memory size.
  final pulumi.Input<int> memoryCapacity;
  /// The number of machine group nodes.
  final pulumi.Input<int> nodeCount;
  /// Machine node.
  final pulumi.Input<List<GetClustersClusterHostGroupListNode>> nodes;
  /// Package year and month time (days).
  final pulumi.Input<String> period;

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
      'nodes': pulumi.Input.mapInputValue<List<GetClustersClusterHostGroupListNode>, List<Map<String, dynamic>>>(nodes, (value) => pulumi.Input.encodeList<GetClustersClusterHostGroupListNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'period': period,
    };
  }

  factory GetClustersClusterHostGroupList.fromMap(Map<String, dynamic> map) {
    return GetClustersClusterHostGroupList(
      bandWidth: (map['bandWidth'] as String).input(),
      chargeType: (map['chargeType'] as String).input(),
      cpuCore: (map['cpuCore'] as int).input(),
      diskCapacity: (map['diskCapacity'] as int).input(),
      diskCount: (map['diskCount'] as int).input(),
      diskType: (map['diskType'] as String).input(),
      hostGroupChangeType: (map['hostGroupChangeType'] as String).input(),
      hostGroupId: (map['hostGroupId'] as String).input(),
      hostGroupName: (map['hostGroupName'] as String).input(),
      hostGroupType: (map['hostGroupType'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      memoryCapacity: (map['memoryCapacity'] as int).input(),
      nodeCount: (map['nodeCount'] as int).input(),
      nodes: (pulumi.Input.decodeList<GetClustersClusterHostGroupListNode>(map['nodes'], (value) => GetClustersClusterHostGroupListNode.fromMap((value as Map).cast<String, dynamic>()))).input(),
      period: (map['period'] as String).input(),
    );
  }
}

