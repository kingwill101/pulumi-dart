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
      'connections':
          pulumi.Input.mapInputValue<
            GetKubernetesClustersClusterConnections,
            Map<String, dynamic>
          >(connections, (value) => value.toMap()),
      'id': id,
      'imageId': imageId,
      'keyName': keyName,
      'logConfigs':
          pulumi.Input.mapInputValue<
            List<GetKubernetesClustersClusterLogConfig>,
            List<Map<String, dynamic>>
          >(
            logConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  GetKubernetesClustersClusterLogConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'masterAutoRenew': masterAutoRenew,
      'masterAutoRenewPeriod': masterAutoRenewPeriod,
      'masterDiskCategory': masterDiskCategory,
      'masterDiskSize': masterDiskSize,
      'masterInstanceChargeType': masterInstanceChargeType,
      'masterInstanceTypes': masterInstanceTypes,
      'masterNodes':
          pulumi.Input.mapInputValue<
            List<GetKubernetesClustersClusterMasterNode>,
            List<Map<String, dynamic>>
          >(
            masterNodes,
            (value) =>
                pulumi.Input.encodeList<
                  GetKubernetesClustersClusterMasterNode,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      'workerNodes':
          pulumi.Input.mapInputValue<
            List<GetKubernetesClustersClusterWorkerNode>,
            List<Map<String, dynamic>>
          >(
            workerNodes,
            (value) =>
                pulumi.Input.encodeList<
                  GetKubernetesClustersClusterWorkerNode,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'workerNumbers': workerNumbers,
      'workerPeriod': workerPeriod,
      'workerPeriodUnit': workerPeriodUnit,
    };
  }

  factory GetKubernetesClustersCluster.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClustersCluster(
      availabilityZone: pulumi.Input.fromValue(
        map['availabilityZone'] as String,
      ),
      clusterNetworkType: pulumi.Input.fromValue(
        map['clusterNetworkType'] as String,
      ),
      connections: pulumi.Input.fromValue(
        GetKubernetesClustersClusterConnections.fromMap(
          (map['connections']! as Map).cast<String, dynamic>(),
        ),
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      imageId: pulumi.Input.fromValue(map['imageId'] as String),
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      logConfigs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetKubernetesClustersClusterLogConfig>(
          map['logConfigs']!,
          (value) => GetKubernetesClustersClusterLogConfig.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      masterAutoRenew: pulumi.Input.fromValue(map['masterAutoRenew'] as bool),
      masterAutoRenewPeriod: pulumi.Input.fromValue(
        map['masterAutoRenewPeriod'] as int,
      ),
      masterDiskCategory: pulumi.Input.fromValue(
        map['masterDiskCategory'] as String,
      ),
      masterDiskSize: pulumi.Input.fromValue(map['masterDiskSize'] as int),
      masterInstanceChargeType: pulumi.Input.fromValue(
        map['masterInstanceChargeType'] as String,
      ),
      masterInstanceTypes: pulumi.Input.fromValue(
        (map['masterInstanceTypes'] as List).cast<String>(),
      ),
      masterNodes: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetKubernetesClustersClusterMasterNode>(
          map['masterNodes']!,
          (value) => GetKubernetesClustersClusterMasterNode.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      masterPeriod: pulumi.Input.fromValue(map['masterPeriod'] as int),
      masterPeriodUnit: pulumi.Input.fromValue(
        map['masterPeriodUnit'] as String,
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      natGatewayId: pulumi.Input.fromValue(map['natGatewayId'] as String),
      nodeCidrMask: pulumi.Input.fromValue(map['nodeCidrMask'] as int),
      podCidr: pulumi.Input.fromValue(map['podCidr'] as String),
      securityGroupId: pulumi.Input.fromValue(map['securityGroupId'] as String),
      serviceCidr: pulumi.Input.fromValue(map['serviceCidr'] as String),
      slbInternetEnabled: pulumi.Input.fromValue(
        map['slbInternetEnabled'] as bool,
      ),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchIds: pulumi.Input.fromValue(
        (map['vswitchIds'] as List).cast<String>(),
      ),
      workerAutoRenew: pulumi.Input.fromValue(map['workerAutoRenew'] as bool),
      workerAutoRenewPeriod: pulumi.Input.fromValue(
        map['workerAutoRenewPeriod'] as int,
      ),
      workerDataDiskCategory: pulumi.Input.fromValue(
        map['workerDataDiskCategory'] as String,
      ),
      workerDataDiskSize: pulumi.Input.fromValue(
        map['workerDataDiskSize'] as int,
      ),
      workerDiskCategory: pulumi.Input.fromValue(
        map['workerDiskCategory'] as String,
      ),
      workerDiskSize: pulumi.Input.fromValue(map['workerDiskSize'] as int),
      workerInstanceChargeType: pulumi.Input.fromValue(
        map['workerInstanceChargeType'] as String,
      ),
      workerInstanceTypes: pulumi.Input.fromValue(
        (map['workerInstanceTypes'] as List).cast<String>(),
      ),
      workerNodes: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetKubernetesClustersClusterWorkerNode>(
          map['workerNodes']!,
          (value) => GetKubernetesClustersClusterWorkerNode.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      workerNumbers: pulumi.Input.fromValue(
        (map['workerNumbers'] as List).cast<int>(),
      ),
      workerPeriod: pulumi.Input.fromValue(map['workerPeriod'] as int),
      workerPeriodUnit: pulumi.Input.fromValue(
        map['workerPeriodUnit'] as String,
      ),
    );
  }
}
