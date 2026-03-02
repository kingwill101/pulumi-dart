// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kubernetes_clusters_cluster_connections.dart';
import 'get_kubernetes_clusters_cluster_log_config.dart';
import 'get_kubernetes_clusters_cluster_master_node.dart';
import 'get_kubernetes_clusters_cluster_worker_node.dart';

class GetKubernetesClustersCluster {
  /// The ID of availability zone.
  final pulumi.Input<String> availabilityZone;
  /// The cluster network type.
  final pulumi.Input<String> clusterNetworkType;
  /// Map of kubernetes cluster connection information.
  final pulumi.Input<GetKubernetesClustersClusterConnections> connections;
  /// ID of the node.
  final pulumi.Input<String> id;
  /// The ID of node image.
  final pulumi.Input<String> imageId;
  /// The keypair of ssh login cluster node, you have to create it first.
  final pulumi.Input<String> keyName;
  /// A list of one element containing information about the associated log store. It contains the following attributes:
  final pulumi.Input<List<GetKubernetesClustersClusterLogConfig>> logConfigs;
  /// Whether to enable master payment auto-renew
  final pulumi.Input<bool> masterAutoRenew;
  /// Master payment auto-renew period.
  final pulumi.Input<int> masterAutoRenewPeriod;
  /// The system disk category of master node.
  final pulumi.Input<String> masterDiskCategory;
  /// The system disk size of master node.
  final pulumi.Input<int> masterDiskSize;
  /// Master payment type.
  final pulumi.Input<String> masterInstanceChargeType;
  /// The instance type of master node.
  final pulumi.Input<List<String>> masterInstanceTypes;
  /// List of cluster master nodes. It contains several attributes to `Block Nodes`.
  final pulumi.Input<List<GetKubernetesClustersClusterMasterNode>> masterNodes;
  /// Master payment period.
  final pulumi.Input<int> masterPeriod;
  /// Master payment period unit.
  final pulumi.Input<String> masterPeriodUnit;
  /// Node name.
  final pulumi.Input<String> name;
  /// The ID of nat gateway used to launch kubernetes cluster.
  final pulumi.Input<String> natGatewayId;
  /// The network mask used on pods for each node.
  final pulumi.Input<int> nodeCidrMask;
  /// The CIDR block for the pod network.
  final pulumi.Input<String> podCidr;
  /// The ID of security group where the current cluster worker node is located.
  final pulumi.Input<String> securityGroupId;
  /// The CIDR block for the service network.
  final pulumi.Input<String> serviceCidr;
  /// Whether internet load balancer for API Server is created
  final pulumi.Input<bool> slbInternetEnabled;
  /// The ID of VPC where the current cluster is located.
  final pulumi.Input<String> vpcId;
  /// The ID of VSwitches where the current cluster is located.
  final pulumi.Input<List<String>> vswitchIds;
  /// Whether to enable worker payment auto-renew.
  final pulumi.Input<bool> workerAutoRenew;
  /// Worker payment auto-renew period
  final pulumi.Input<int> workerAutoRenewPeriod;
  /// The data disk size of worker node.
  final pulumi.Input<String> workerDataDiskCategory;
  /// The data disk category of worker node.
  final pulumi.Input<int> workerDataDiskSize;
  /// The system disk category of worker node.
  final pulumi.Input<String> workerDiskCategory;
  /// The system disk size of worker node.
  final pulumi.Input<int> workerDiskSize;
  /// Worker payment type
  final pulumi.Input<String> workerInstanceChargeType;
  /// The instance type of worker node.
  final pulumi.Input<List<String>> workerInstanceTypes;
  /// List of cluster worker nodes. It contains several attributes to `Block Nodes`.
  final pulumi.Input<List<GetKubernetesClustersClusterWorkerNode>> workerNodes;
  /// The ECS instance node number in the current container cluster.
  final pulumi.Input<List<int>> workerNumbers;
  /// Worker payment period.
  final pulumi.Input<int> workerPeriod;
  /// Worker payment period unit.
  final pulumi.Input<String> workerPeriodUnit;

  /// Creates a new [GetKubernetesClustersCluster].
  /// [availabilityZone] The ID of availability zone.
  /// [clusterNetworkType] The cluster network type.
  /// [connections] Map of kubernetes cluster connection information.
  /// [id] ID of the node.
  /// [imageId] The ID of node image.
  /// [keyName] The keypair of ssh login cluster node, you have to create it first.
  /// [logConfigs] A list of one element containing information about the associated log store. It contains the following attributes:
  /// [masterAutoRenew] Whether to enable master payment auto-renew
  /// [masterAutoRenewPeriod] Master payment auto-renew period.
  /// [masterDiskCategory] The system disk category of master node.
  /// [masterDiskSize] The system disk size of master node.
  /// [masterInstanceChargeType] Master payment type.
  /// [masterInstanceTypes] The instance type of master node.
  /// [masterNodes] List of cluster master nodes. It contains several attributes to `Block Nodes`.
  /// [masterPeriod] Master payment period.
  /// [masterPeriodUnit] Master payment period unit.
  /// [name] Node name.
  /// [natGatewayId] The ID of nat gateway used to launch kubernetes cluster.
  /// [nodeCidrMask] The network mask used on pods for each node.
  /// [podCidr] The CIDR block for the pod network.
  /// [securityGroupId] The ID of security group where the current cluster worker node is located.
  /// [serviceCidr] The CIDR block for the service network.
  /// [slbInternetEnabled] Whether internet load balancer for API Server is created
  /// [vpcId] The ID of VPC where the current cluster is located.
  /// [vswitchIds] The ID of VSwitches where the current cluster is located.
  /// [workerAutoRenew] Whether to enable worker payment auto-renew.
  /// [workerAutoRenewPeriod] Worker payment auto-renew period
  /// [workerDataDiskCategory] The data disk size of worker node.
  /// [workerDataDiskSize] The data disk category of worker node.
  /// [workerDiskCategory] The system disk category of worker node.
  /// [workerDiskSize] The system disk size of worker node.
  /// [workerInstanceChargeType] Worker payment type
  /// [workerInstanceTypes] The instance type of worker node.
  /// [workerNodes] List of cluster worker nodes. It contains several attributes to `Block Nodes`.
  /// [workerNumbers] The ECS instance node number in the current container cluster.
  /// [workerPeriod] Worker payment period.
  /// [workerPeriodUnit] Worker payment period unit.
  GetKubernetesClustersCluster({
    required this.availabilityZone,
    required this.clusterNetworkType,
    required this.connections,
    required this.id,
    required this.imageId,
    required this.keyName,
    required this.logConfigs,
    required this.masterAutoRenew,
    required this.masterAutoRenewPeriod,
    required this.masterDiskCategory,
    required this.masterDiskSize,
    required this.masterInstanceChargeType,
    required this.masterInstanceTypes,
    required this.masterNodes,
    required this.masterPeriod,
    required this.masterPeriodUnit,
    required this.name,
    required this.natGatewayId,
    required this.nodeCidrMask,
    required this.podCidr,
    required this.securityGroupId,
    required this.serviceCidr,
    required this.slbInternetEnabled,
    required this.vpcId,
    required this.vswitchIds,
    required this.workerAutoRenew,
    required this.workerAutoRenewPeriod,
    required this.workerDataDiskCategory,
    required this.workerDataDiskSize,
    required this.workerDiskCategory,
    required this.workerDiskSize,
    required this.workerInstanceChargeType,
    required this.workerInstanceTypes,
    required this.workerNodes,
    required this.workerNumbers,
    required this.workerPeriod,
    required this.workerPeriodUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': availabilityZone,
      'clusterNetworkType': clusterNetworkType,
      'connections': pulumi.Input.mapInputValue<GetKubernetesClustersClusterConnections, Map<String, dynamic>>(connections, (value) => value.toMap()),
      'id': id,
      'imageId': imageId,
      'keyName': keyName,
      'logConfigs': pulumi.Input.mapInputValue<List<GetKubernetesClustersClusterLogConfig>, List<Map<String, dynamic>>>(logConfigs, (value) => pulumi.Input.encodeList<GetKubernetesClustersClusterLogConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'masterAutoRenew': masterAutoRenew,
      'masterAutoRenewPeriod': masterAutoRenewPeriod,
      'masterDiskCategory': masterDiskCategory,
      'masterDiskSize': masterDiskSize,
      'masterInstanceChargeType': masterInstanceChargeType,
      'masterInstanceTypes': masterInstanceTypes,
      'masterNodes': pulumi.Input.mapInputValue<List<GetKubernetesClustersClusterMasterNode>, List<Map<String, dynamic>>>(masterNodes, (value) => pulumi.Input.encodeList<GetKubernetesClustersClusterMasterNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'masterPeriod': masterPeriod,
      'masterPeriodUnit': masterPeriodUnit,
      'name': name,
      'natGatewayId': natGatewayId,
      'nodeCidrMask': nodeCidrMask,
      'podCidr': podCidr,
      'securityGroupId': securityGroupId,
      'serviceCidr': serviceCidr,
      'slbInternetEnabled': slbInternetEnabled,
      'vpcId': vpcId,
      'vswitchIds': vswitchIds,
      'workerAutoRenew': workerAutoRenew,
      'workerAutoRenewPeriod': workerAutoRenewPeriod,
      'workerDataDiskCategory': workerDataDiskCategory,
      'workerDataDiskSize': workerDataDiskSize,
      'workerDiskCategory': workerDiskCategory,
      'workerDiskSize': workerDiskSize,
      'workerInstanceChargeType': workerInstanceChargeType,
      'workerInstanceTypes': workerInstanceTypes,
      'workerNodes': pulumi.Input.mapInputValue<List<GetKubernetesClustersClusterWorkerNode>, List<Map<String, dynamic>>>(workerNodes, (value) => pulumi.Input.encodeList<GetKubernetesClustersClusterWorkerNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workerNumbers': workerNumbers,
      'workerPeriod': workerPeriod,
      'workerPeriodUnit': workerPeriodUnit,
    };
  }

  factory GetKubernetesClustersCluster.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClustersCluster(
      availabilityZone: (map['availabilityZone'] as String).input(),
      clusterNetworkType: (map['clusterNetworkType'] as String).input(),
      connections: (GetKubernetesClustersClusterConnections.fromMap((map['connections'] as Map).cast<String, dynamic>())).input(),
      id: (map['id'] as String).input(),
      imageId: (map['imageId'] as String).input(),
      keyName: (map['keyName'] as String).input(),
      logConfigs: (pulumi.Input.decodeList<GetKubernetesClustersClusterLogConfig>(map['logConfigs'], (value) => GetKubernetesClustersClusterLogConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      masterAutoRenew: (map['masterAutoRenew'] as bool).input(),
      masterAutoRenewPeriod: (map['masterAutoRenewPeriod'] as int).input(),
      masterDiskCategory: (map['masterDiskCategory'] as String).input(),
      masterDiskSize: (map['masterDiskSize'] as int).input(),
      masterInstanceChargeType: (map['masterInstanceChargeType'] as String).input(),
      masterInstanceTypes: ((map['masterInstanceTypes'] as List).cast<String>()).input(),
      masterNodes: (pulumi.Input.decodeList<GetKubernetesClustersClusterMasterNode>(map['masterNodes'], (value) => GetKubernetesClustersClusterMasterNode.fromMap((value as Map).cast<String, dynamic>()))).input(),
      masterPeriod: (map['masterPeriod'] as int).input(),
      masterPeriodUnit: (map['masterPeriodUnit'] as String).input(),
      name: (map['name'] as String).input(),
      natGatewayId: (map['natGatewayId'] as String).input(),
      nodeCidrMask: (map['nodeCidrMask'] as int).input(),
      podCidr: (map['podCidr'] as String).input(),
      securityGroupId: (map['securityGroupId'] as String).input(),
      serviceCidr: (map['serviceCidr'] as String).input(),
      slbInternetEnabled: (map['slbInternetEnabled'] as bool).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchIds: ((map['vswitchIds'] as List).cast<String>()).input(),
      workerAutoRenew: (map['workerAutoRenew'] as bool).input(),
      workerAutoRenewPeriod: (map['workerAutoRenewPeriod'] as int).input(),
      workerDataDiskCategory: (map['workerDataDiskCategory'] as String).input(),
      workerDataDiskSize: (map['workerDataDiskSize'] as int).input(),
      workerDiskCategory: (map['workerDiskCategory'] as String).input(),
      workerDiskSize: (map['workerDiskSize'] as int).input(),
      workerInstanceChargeType: (map['workerInstanceChargeType'] as String).input(),
      workerInstanceTypes: ((map['workerInstanceTypes'] as List).cast<String>()).input(),
      workerNodes: (pulumi.Input.decodeList<GetKubernetesClustersClusterWorkerNode>(map['workerNodes'], (value) => GetKubernetesClustersClusterWorkerNode.fromMap((value as Map).cast<String, dynamic>()))).input(),
      workerNumbers: ((map['workerNumbers'] as List).cast<int>()).input(),
      workerPeriod: (map['workerPeriod'] as int).input(),
      workerPeriodUnit: (map['workerPeriodUnit'] as String).input(),
    );
  }
}

