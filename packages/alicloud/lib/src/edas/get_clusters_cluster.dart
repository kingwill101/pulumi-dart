// ignore_for_file: unused_element, unnecessary_cast


class GetClustersCluster {
  /// The ID of the cluster that you want to create the application.
  final String clusterId;
  /// The name of the cluster.
  final String clusterName;
  /// The type of the cluster, Valid values: 1: Swarm cluster. 2: ECS cluster. 3: Kubernetes cluster.
  final int clusterType;
  /// The total number of CPUs in the cluster.
  final int cpu;
  /// The number of used CPUs in the cluster.
  final int cpuUsed;
  /// Cluster's creation time.
  final int createTime;
  /// The total amount of memory in the cluser. Unit: MB.
  final int mem;
  /// The amount of used memory in the cluser. Unit: MB.
  final int memUsed;
  /// The network type of the cluster. Valid values: 1: classic network. 2: VPC.
  final int networkMode;
  /// The number of the Elastic Compute Service (ECS) instances that are deployed to the cluster.
  final int nodeNum;
  /// The ID of the namespace the application belongs to.
  final String regionId;
  /// The time when the cluster was last updated.
  final int updateTime;
  /// The ID of the Virtual Private Cloud (VPC) for the cluster.
  final String vpcId;

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
      clusterId: map['clusterId'] as String,
      clusterName: map['clusterName'] as String,
      clusterType: map['clusterType'] as int,
      cpu: map['cpu'] as int,
      cpuUsed: map['cpuUsed'] as int,
      createTime: map['createTime'] as int,
      mem: map['mem'] as int,
      memUsed: map['memUsed'] as int,
      networkMode: map['networkMode'] as int,
      nodeNum: map['nodeNum'] as int,
      regionId: map['regionId'] as String,
      updateTime: map['updateTime'] as int,
      vpcId: map['vpcId'] as String,
    );
  }
}

