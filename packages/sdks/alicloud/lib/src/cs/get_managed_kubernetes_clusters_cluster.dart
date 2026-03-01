// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_kubernetes_clusters_cluster_connections.dart';
import 'get_managed_kubernetes_clusters_cluster_log_config.dart';
import 'get_managed_kubernetes_clusters_cluster_rrsa_config.dart';
import 'get_managed_kubernetes_clusters_cluster_worker_node.dart';

class GetManagedKubernetesClustersCluster {
  /// The ID of availability zone.
  final String availabilityZone;
  final String clusterNetworkType;
  /// Map of kubernetes cluster connection information.
  final GetManagedKubernetesClustersClusterConnections connections;
  /// ID of the node.
  final String id;
  final String imageId;
  /// The keypair of ssh login cluster node, you have to create it first.
  final String keyName;
  /// A list of one element containing information about the associated log store. It contains the following attributes:
  final List<GetManagedKubernetesClustersClusterLogConfig> logConfigs;
  /// Node name.
  final String name;
  /// The ID of nat gateway used to launch kubernetes cluster.
  final String natGatewayId;
  final String podCidr;
  /// (Available since v1.245.0) Nested attribute containing RRSA related data for your cluster.
  final GetManagedKubernetesClustersClusterRrsaConfig rrsaConfig;
  /// The ID of security group where the current cluster worker node is located.
  final String securityGroupId;
  final String serviceCidr;
  final bool slbInternetEnabled;
  /// (Available since v1.245.0) The state of cluster.
  final String state;
  /// The ID of VPC where the current cluster is located.
  final String vpcId;
  /// The ID of VSwitches where the current cluster is located.
  final List<String> vswitchIds;
  final bool workerAutoRenew;
  final int workerAutoRenewPeriod;
  final String workerDataDiskCategory;
  final int workerDataDiskSize;
  final String workerDiskCategory;
  final int workerDiskSize;
  final String workerInstanceChargeType;
  final List<String> workerInstanceTypes;
  /// List of cluster worker nodes.
  final List<GetManagedKubernetesClustersClusterWorkerNode> workerNodes;
  /// The ECS instance node number in the current container cluster.
  final List<int> workerNumbers;
  final int workerPeriod;
  final String workerPeriodUnit;

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
      'connections': connections.toMap(),
      'id': id,
      'imageId': imageId,
      'keyName': keyName,
      'logConfigs': pulumi.Input.encodeList<GetManagedKubernetesClustersClusterLogConfig, Map<String, dynamic>>(logConfigs, (value) => value.toMap()),
      'name': name,
      'natGatewayId': natGatewayId,
      'podCidr': podCidr,
      'rrsaConfig': rrsaConfig.toMap(),
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
      'workerNodes': pulumi.Input.encodeList<GetManagedKubernetesClustersClusterWorkerNode, Map<String, dynamic>>(workerNodes, (value) => value.toMap()),
      'workerNumbers': workerNumbers,
      'workerPeriod': workerPeriod,
      'workerPeriodUnit': workerPeriodUnit,
    };
  }

  factory GetManagedKubernetesClustersCluster.fromMap(Map<String, dynamic> map) {
    return GetManagedKubernetesClustersCluster(
      availabilityZone: map['availabilityZone'] as String,
      clusterNetworkType: map['clusterNetworkType'] as String,
      connections: GetManagedKubernetesClustersClusterConnections.fromMap((map['connections'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      imageId: map['imageId'] as String,
      keyName: map['keyName'] as String,
      logConfigs: pulumi.Input.decodeList<GetManagedKubernetesClustersClusterLogConfig>(map['logConfigs'], (value) => GetManagedKubernetesClustersClusterLogConfig.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      natGatewayId: map['natGatewayId'] as String,
      podCidr: map['podCidr'] as String,
      rrsaConfig: GetManagedKubernetesClustersClusterRrsaConfig.fromMap((map['rrsaConfig'] as Map).cast<String, dynamic>()),
      securityGroupId: map['securityGroupId'] as String,
      serviceCidr: map['serviceCidr'] as String,
      slbInternetEnabled: map['slbInternetEnabled'] as bool,
      state: map['state'] as String,
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
      workerNodes: pulumi.Input.decodeList<GetManagedKubernetesClustersClusterWorkerNode>(map['workerNodes'], (value) => GetManagedKubernetesClustersClusterWorkerNode.fromMap((value as Map).cast<String, dynamic>())),
      workerNumbers: (map['workerNumbers'] as List).cast<int>(),
      workerPeriod: map['workerPeriod'] as int,
      workerPeriodUnit: map['workerPeriodUnit'] as String,
    );
  }
}

