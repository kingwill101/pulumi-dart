// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kubernetes_clusters_cluster_connections.dart';
import 'get_kubernetes_clusters_cluster_log_config.dart';
import 'get_kubernetes_clusters_cluster_master_node.dart';
import 'get_kubernetes_clusters_cluster_worker_node.dart';

class GetKubernetesClustersCluster {
  /// The ID of availability zone.
  final String availabilityZone;
  /// The cluster network type.
  final String clusterNetworkType;
  /// Map of kubernetes cluster connection information.
  final GetKubernetesClustersClusterConnections connections;
  /// ID of the node.
  final String id;
  /// The ID of node image.
  final String imageId;
  /// The keypair of ssh login cluster node, you have to create it first.
  final String keyName;
  /// A list of one element containing information about the associated log store. It contains the following attributes:
  final List<GetKubernetesClustersClusterLogConfig> logConfigs;
  /// Whether to enable master payment auto-renew
  final bool masterAutoRenew;
  /// Master payment auto-renew period.
  final int masterAutoRenewPeriod;
  /// The system disk category of master node.
  final String masterDiskCategory;
  /// The system disk size of master node.
  final int masterDiskSize;
  /// Master payment type.
  final String masterInstanceChargeType;
  /// The instance type of master node.
  final List<String> masterInstanceTypes;
  /// List of cluster master nodes. It contains several attributes to `Block Nodes`.
  final List<GetKubernetesClustersClusterMasterNode> masterNodes;
  /// Master payment period.
  final int masterPeriod;
  /// Master payment period unit.
  final String masterPeriodUnit;
  /// Node name.
  final String name;
  /// The ID of nat gateway used to launch kubernetes cluster.
  final String natGatewayId;
  /// The network mask used on pods for each node.
  final int nodeCidrMask;
  /// The CIDR block for the pod network.
  final String podCidr;
  /// The ID of security group where the current cluster worker node is located.
  final String securityGroupId;
  /// The CIDR block for the service network.
  final String serviceCidr;
  /// Whether internet load balancer for API Server is created
  final bool slbInternetEnabled;
  /// The ID of VPC where the current cluster is located.
  final String vpcId;
  /// The ID of VSwitches where the current cluster is located.
  final List<String> vswitchIds;
  /// Whether to enable worker payment auto-renew.
  final bool workerAutoRenew;
  /// Worker payment auto-renew period
  final int workerAutoRenewPeriod;
  /// The data disk size of worker node.
  final String workerDataDiskCategory;
  /// The data disk category of worker node.
  final int workerDataDiskSize;
  /// The system disk category of worker node.
  final String workerDiskCategory;
  /// The system disk size of worker node.
  final int workerDiskSize;
  /// Worker payment type
  final String workerInstanceChargeType;
  /// The instance type of worker node.
  final List<String> workerInstanceTypes;
  /// List of cluster worker nodes. It contains several attributes to `Block Nodes`.
  final List<GetKubernetesClustersClusterWorkerNode> workerNodes;
  /// The ECS instance node number in the current container cluster.
  final List<int> workerNumbers;
  /// Worker payment period.
  final int workerPeriod;
  /// Worker payment period unit.
  final String workerPeriodUnit;

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
      'connections': connections.toMap(),
      'id': id,
      'imageId': imageId,
      'keyName': keyName,
      'logConfigs': pulumi.Input.encodeList<GetKubernetesClustersClusterLogConfig, Map<String, dynamic>>(logConfigs, (value) => value.toMap()),
      'masterAutoRenew': masterAutoRenew,
      'masterAutoRenewPeriod': masterAutoRenewPeriod,
      'masterDiskCategory': masterDiskCategory,
      'masterDiskSize': masterDiskSize,
      'masterInstanceChargeType': masterInstanceChargeType,
      'masterInstanceTypes': masterInstanceTypes,
      'masterNodes': pulumi.Input.encodeList<GetKubernetesClustersClusterMasterNode, Map<String, dynamic>>(masterNodes, (value) => value.toMap()),
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
      'workerNodes': pulumi.Input.encodeList<GetKubernetesClustersClusterWorkerNode, Map<String, dynamic>>(workerNodes, (value) => value.toMap()),
      'workerNumbers': workerNumbers,
      'workerPeriod': workerPeriod,
      'workerPeriodUnit': workerPeriodUnit,
    };
  }

  factory GetKubernetesClustersCluster.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClustersCluster(
      availabilityZone: map['availabilityZone'] as String,
      clusterNetworkType: map['clusterNetworkType'] as String,
      connections: GetKubernetesClustersClusterConnections.fromMap((map['connections'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      imageId: map['imageId'] as String,
      keyName: map['keyName'] as String,
      logConfigs: pulumi.Input.decodeList<GetKubernetesClustersClusterLogConfig>(map['logConfigs'], (value) => GetKubernetesClustersClusterLogConfig.fromMap((value as Map).cast<String, dynamic>())),
      masterAutoRenew: map['masterAutoRenew'] as bool,
      masterAutoRenewPeriod: map['masterAutoRenewPeriod'] as int,
      masterDiskCategory: map['masterDiskCategory'] as String,
      masterDiskSize: map['masterDiskSize'] as int,
      masterInstanceChargeType: map['masterInstanceChargeType'] as String,
      masterInstanceTypes: (map['masterInstanceTypes'] as List).cast<String>(),
      masterNodes: pulumi.Input.decodeList<GetKubernetesClustersClusterMasterNode>(map['masterNodes'], (value) => GetKubernetesClustersClusterMasterNode.fromMap((value as Map).cast<String, dynamic>())),
      masterPeriod: map['masterPeriod'] as int,
      masterPeriodUnit: map['masterPeriodUnit'] as String,
      name: map['name'] as String,
      natGatewayId: map['natGatewayId'] as String,
      nodeCidrMask: map['nodeCidrMask'] as int,
      podCidr: map['podCidr'] as String,
      securityGroupId: map['securityGroupId'] as String,
      serviceCidr: map['serviceCidr'] as String,
      slbInternetEnabled: map['slbInternetEnabled'] as bool,
      vpcId: map['vpcId'] as String,
      vswitchIds: (map['vswitchIds'] as List).cast<String>(),
      workerAutoRenew: map['workerAutoRenew'] as bool,
      workerAutoRenewPeriod: map['workerAutoRenewPeriod'] as int,
      workerDataDiskCategory: map['workerDataDiskCategory'] as String,
      workerDataDiskSize: map['workerDataDiskSize'] as int,
      workerDiskCategory: map['workerDiskCategory'] as String,
      workerDiskSize: map['workerDiskSize'] as int,
      workerInstanceChargeType: map['workerInstanceChargeType'] as String,
      workerInstanceTypes: (map['workerInstanceTypes'] as List).cast<String>(),
      workerNodes: pulumi.Input.decodeList<GetKubernetesClustersClusterWorkerNode>(map['workerNodes'], (value) => GetKubernetesClustersClusterWorkerNode.fromMap((value as Map).cast<String, dynamic>())),
      workerNumbers: (map['workerNumbers'] as List).cast<int>(),
      workerPeriod: map['workerPeriod'] as int,
      workerPeriodUnit: map['workerPeriodUnit'] as String,
    );
  }
}

