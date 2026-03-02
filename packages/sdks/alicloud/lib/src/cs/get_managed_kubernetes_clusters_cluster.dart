// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_kubernetes_clusters_cluster_connections.dart';
import 'get_managed_kubernetes_clusters_cluster_log_config.dart';
import 'get_managed_kubernetes_clusters_cluster_rrsa_config.dart';
import 'get_managed_kubernetes_clusters_cluster_worker_node.dart';

class GetManagedKubernetesClustersCluster {
  /// The ID of availability zone.
  final pulumi.Input<String> availabilityZone;
  final pulumi.Input<String> clusterNetworkType;
  /// Map of kubernetes cluster connection information.
  final pulumi.Input<GetManagedKubernetesClustersClusterConnections> connections;
  /// ID of the node.
  final pulumi.Input<String> id;
  final pulumi.Input<String> imageId;
  /// The keypair of ssh login cluster node, you have to create it first.
  final pulumi.Input<String> keyName;
  /// A list of one element containing information about the associated log store. It contains the following attributes:
  final pulumi.Input<List<GetManagedKubernetesClustersClusterLogConfig>> logConfigs;
  /// Node name.
  final pulumi.Input<String> name;
  /// The ID of nat gateway used to launch kubernetes cluster.
  final pulumi.Input<String> natGatewayId;
  final pulumi.Input<String> podCidr;
  /// (Available since v1.245.0) Nested attribute containing RRSA related data for your cluster.
  final pulumi.Input<GetManagedKubernetesClustersClusterRrsaConfig> rrsaConfig;
  /// The ID of security group where the current cluster worker node is located.
  final pulumi.Input<String> securityGroupId;
  final pulumi.Input<String> serviceCidr;
  final pulumi.Input<bool> slbInternetEnabled;
  /// (Available since v1.245.0) The state of cluster.
  final pulumi.Input<String> state;
  /// The ID of VPC where the current cluster is located.
  final pulumi.Input<String> vpcId;
  /// The ID of VSwitches where the current cluster is located.
  final pulumi.Input<List<String>> vswitchIds;
  final pulumi.Input<bool> workerAutoRenew;
  final pulumi.Input<int> workerAutoRenewPeriod;
  final pulumi.Input<String> workerDataDiskCategory;
  final pulumi.Input<int> workerDataDiskSize;
  final pulumi.Input<String> workerDiskCategory;
  final pulumi.Input<int> workerDiskSize;
  final pulumi.Input<String> workerInstanceChargeType;
  final pulumi.Input<List<String>> workerInstanceTypes;
  /// List of cluster worker nodes.
  final pulumi.Input<List<GetManagedKubernetesClustersClusterWorkerNode>> workerNodes;
  /// The ECS instance node number in the current container cluster.
  final pulumi.Input<List<int>> workerNumbers;
  final pulumi.Input<int> workerPeriod;
  final pulumi.Input<String> workerPeriodUnit;

  /// Creates a new [GetManagedKubernetesClustersCluster].
  /// [availabilityZone] The ID of availability zone.
  /// [clusterNetworkType] Required.
  /// [connections] Map of kubernetes cluster connection information.
  /// [id] ID of the node.
  /// [imageId] Required.
  /// [keyName] The keypair of ssh login cluster node, you have to create it first.
  /// [logConfigs] A list of one element containing information about the associated log store. It contains the following attributes:
  /// [name] Node name.
  /// [natGatewayId] The ID of nat gateway used to launch kubernetes cluster.
  /// [podCidr] Required.
  /// [rrsaConfig] (Available since v1.245.0) Nested attribute containing RRSA related data for your cluster.
  /// [securityGroupId] The ID of security group where the current cluster worker node is located.
  /// [serviceCidr] Required.
  /// [slbInternetEnabled] Required.
  /// [state] (Available since v1.245.0) The state of cluster.
  /// [vpcId] The ID of VPC where the current cluster is located.
  /// [vswitchIds] The ID of VSwitches where the current cluster is located.
  /// [workerAutoRenew] Required.
  /// [workerAutoRenewPeriod] Required.
  /// [workerDataDiskCategory] Required.
  /// [workerDataDiskSize] Required.
  /// [workerDiskCategory] Required.
  /// [workerDiskSize] Required.
  /// [workerInstanceChargeType] Required.
  /// [workerInstanceTypes] Required.
  /// [workerNodes] List of cluster worker nodes.
  /// [workerNumbers] The ECS instance node number in the current container cluster.
  /// [workerPeriod] Required.
  /// [workerPeriodUnit] Required.
  GetManagedKubernetesClustersCluster({
    required this.availabilityZone,
    required this.clusterNetworkType,
    required this.connections,
    required this.id,
    required this.imageId,
    required this.keyName,
    required this.logConfigs,
    required this.name,
    required this.natGatewayId,
    required this.podCidr,
    required this.rrsaConfig,
    required this.securityGroupId,
    required this.serviceCidr,
    required this.slbInternetEnabled,
    required this.state,
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
      'connections': pulumi.Input.mapInputValue<GetManagedKubernetesClustersClusterConnections, Map<String, dynamic>>(connections, (value) => value.toMap()),
      'id': id,
      'imageId': imageId,
      'keyName': keyName,
      'logConfigs': pulumi.Input.mapInputValue<List<GetManagedKubernetesClustersClusterLogConfig>, List<Map<String, dynamic>>>(logConfigs, (value) => pulumi.Input.encodeList<GetManagedKubernetesClustersClusterLogConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'natGatewayId': natGatewayId,
      'podCidr': podCidr,
      'rrsaConfig': pulumi.Input.mapInputValue<GetManagedKubernetesClustersClusterRrsaConfig, Map<String, dynamic>>(rrsaConfig, (value) => value.toMap()),
      'securityGroupId': securityGroupId,
      'serviceCidr': serviceCidr,
      'slbInternetEnabled': slbInternetEnabled,
      'state': state,
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
      'workerNodes': pulumi.Input.mapInputValue<List<GetManagedKubernetesClustersClusterWorkerNode>, List<Map<String, dynamic>>>(workerNodes, (value) => pulumi.Input.encodeList<GetManagedKubernetesClustersClusterWorkerNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workerNumbers': workerNumbers,
      'workerPeriod': workerPeriod,
      'workerPeriodUnit': workerPeriodUnit,
    };
  }

  factory GetManagedKubernetesClustersCluster.fromMap(Map<String, dynamic> map) {
    return GetManagedKubernetesClustersCluster(
      availabilityZone: (map['availabilityZone'] as String).input(),
      clusterNetworkType: (map['clusterNetworkType'] as String).input(),
      connections: (GetManagedKubernetesClustersClusterConnections.fromMap((map['connections'] as Map).cast<String, dynamic>())).input(),
      id: (map['id'] as String).input(),
      imageId: (map['imageId'] as String).input(),
      keyName: (map['keyName'] as String).input(),
      logConfigs: (pulumi.Input.decodeList<GetManagedKubernetesClustersClusterLogConfig>(map['logConfigs'], (value) => GetManagedKubernetesClustersClusterLogConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      natGatewayId: (map['natGatewayId'] as String).input(),
      podCidr: (map['podCidr'] as String).input(),
      rrsaConfig: (GetManagedKubernetesClustersClusterRrsaConfig.fromMap((map['rrsaConfig'] as Map).cast<String, dynamic>())).input(),
      securityGroupId: (map['securityGroupId'] as String).input(),
      serviceCidr: (map['serviceCidr'] as String).input(),
      slbInternetEnabled: (map['slbInternetEnabled'] as bool).input(),
      state: (map['state'] as String).input(),
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
      workerNodes: (pulumi.Input.decodeList<GetManagedKubernetesClustersClusterWorkerNode>(map['workerNodes'], (value) => GetManagedKubernetesClustersClusterWorkerNode.fromMap((value as Map).cast<String, dynamic>()))).input(),
      workerNumbers: ((map['workerNumbers'] as List).cast<int>()).input(),
      workerPeriod: (map['workerPeriod'] as int).input(),
      workerPeriodUnit: (map['workerPeriodUnit'] as String).input(),
    );
  }
}

