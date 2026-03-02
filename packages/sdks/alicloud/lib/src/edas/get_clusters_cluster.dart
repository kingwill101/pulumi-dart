// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClustersCluster {
  /// The ID of the cluster that you want to create the application.
  final pulumi.Input<String> clusterId;
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// The type of the cluster, Valid values: 1: Swarm cluster. 2: ECS cluster. 3: Kubernetes cluster.
  final pulumi.Input<int> clusterType;
  /// The total number of CPUs in the cluster.
  final pulumi.Input<int> cpu;
  /// The number of used CPUs in the cluster.
  final pulumi.Input<int> cpuUsed;
  /// Cluster's creation time.
  final pulumi.Input<int> createTime;
  /// The total amount of memory in the cluser. Unit: MB.
  final pulumi.Input<int> mem;
  /// The amount of used memory in the cluser. Unit: MB.
  final pulumi.Input<int> memUsed;
  /// The network type of the cluster. Valid values: 1: classic network. 2: VPC.
  final pulumi.Input<int> networkMode;
  /// The number of the Elastic Compute Service (ECS) instances that are deployed to the cluster.
  final pulumi.Input<int> nodeNum;
  /// The ID of the namespace the application belongs to.
  final pulumi.Input<String> regionId;
  /// The time when the cluster was last updated.
  final pulumi.Input<int> updateTime;
  /// The ID of the Virtual Private Cloud (VPC) for the cluster.
  final pulumi.Input<String> vpcId;

  /// Creates a new [GetClustersCluster].
  /// [clusterId] The ID of the cluster that you want to create the application.
  /// [clusterName] The name of the cluster.
  /// [clusterType] The type of the cluster, Valid values: 1: Swarm cluster. 2: ECS cluster. 3: Kubernetes cluster.
  /// [cpu] The total number of CPUs in the cluster.
  /// [cpuUsed] The number of used CPUs in the cluster.
  /// [createTime] Cluster's creation time.
  /// [mem] The total amount of memory in the cluser. Unit: MB.
  /// [memUsed] The amount of used memory in the cluser. Unit: MB.
  /// [networkMode] The network type of the cluster. Valid values: 1: classic network. 2: VPC.
  /// [nodeNum] The number of the Elastic Compute Service (ECS) instances that are deployed to the cluster.
  /// [regionId] The ID of the namespace the application belongs to.
  /// [updateTime] The time when the cluster was last updated.
  /// [vpcId] The ID of the Virtual Private Cloud (VPC) for the cluster.
  GetClustersCluster({
    required this.clusterId,
    required this.clusterName,
    required this.clusterType,
    required this.cpu,
    required this.cpuUsed,
    required this.createTime,
    required this.mem,
    required this.memUsed,
    required this.networkMode,
    required this.nodeNum,
    required this.regionId,
    required this.updateTime,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'clusterName': clusterName,
      'clusterType': clusterType,
      'cpu': cpu,
      'cpuUsed': cpuUsed,
      'createTime': createTime,
      'mem': mem,
      'memUsed': memUsed,
      'networkMode': networkMode,
      'nodeNum': nodeNum,
      'regionId': regionId,
      'updateTime': updateTime,
      'vpcId': vpcId,
    };
  }

  factory GetClustersCluster.fromMap(Map<String, dynamic> map) {
    return GetClustersCluster(
      clusterId: (map['clusterId'] as String).input(),
      clusterName: (map['clusterName'] as String).input(),
      clusterType: (map['clusterType'] as int).input(),
      cpu: (map['cpu'] as int).input(),
      cpuUsed: (map['cpuUsed'] as int).input(),
      createTime: (map['createTime'] as int).input(),
      mem: (map['mem'] as int).input(),
      memUsed: (map['memUsed'] as int).input(),
      networkMode: (map['networkMode'] as int).input(),
      nodeNum: (map['nodeNum'] as int).input(),
      regionId: (map['regionId'] as String).input(),
      updateTime: (map['updateTime'] as int).input(),
      vpcId: (map['vpcId'] as String).input(),
    );
  }
}

