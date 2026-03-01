// ignore_for_file: unused_element, unnecessary_cast

import 'get_clusters_cluster_auto_mode.dart';
import 'get_clusters_cluster_maintenance_window.dart';
import 'get_clusters_cluster_operation_policy.dart';

class GetClustersCluster {
  /// **NOTE:** This field is only available when `enable_details` is `true`. Intelligent managed mode configuration.
  final GetClustersClusterAutoMode autoMode;
  /// The local domain name of the cluster.
  final String clusterDomain;
  /// The cluster ID.
  final String clusterId;
  /// Custom cluster name.
  final String clusterName;
  /// The specification of the clusters to query. Valid values:
  /// - `ack.pro.small`: ACK Pro clusters.
  /// - `ack.standard`: ACK Basic clusters.
  final String clusterSpec;
  /// The type of the clusters to query. Valid values:
  /// - `Kubernetes`: ACK dedicated clusters.
  /// - `ManagedKubernetes`: ACK managed clusters. ACK managed clusters include ACK Basic clusters, ACK Pro clusters, ACK Serverless Basic clusters, ACK Serverless Pro clusters, ACK Edge Basic clusters, ACK Edge Pro clusters, and ACK Lingjun Pro clusters.
  /// - `ExternalKubernetes`: registered clusters.
  final String clusterType;
  /// The current version of the cluster.
  final String currentVersion;
  /// Cluster deletion protection prevents accidental deletion of the cluster through the console or API.
  final bool deletionProtection;
  /// The ID of the resource supplied above.
  final String id;
  /// The IP protocol stack of the cluster.
  final String ipStack;
  /// **NOTE:** This field is only available when `enable_details` is `true`. Cluster maintenance window.
  final GetClustersClusterMaintenanceWindow maintenanceWindow;
  /// **NOTE:** This field is only available when `enable_details` is `true`. The number of IP addresses per node, determined by specifying the CIDR block of the network.
  final String nodeCidrMask;
  /// **NOTE:** This field is only available when `enable_details` is `true`. The automatic operations and maintenance policy for the cluster.
  final GetClustersClusterOperationPolicy operationPolicy;
  /// The CIDR block for the pod network.
  final String podCidr;
  /// The subtype of the clusters to query. Valid values:
  /// - `Default`: ACK managed clusters. ACK managed clusters include ACK Basic clusters and ACK Pro clusters.
  /// - `Edge`: ACK Edge clusters. ACK Edge clusters include ACK Edge Basic clusters and ACK Edge Pro clusters.
  /// - `Serverless`: ACK Serverless clusters. ACK Serverless clusters include ACK Serverless Basic clusters and ACK Serverless Pro clusters.
  /// - `Lingjun`: ACK Lingjun Pro clusters.
  final String profile;
  /// kube-proxy proxy mode.
  final String proxyMode;
  /// The region ID where the cluster is deployed.
  final String regionId;
  /// The resource group ID of the cluster.
  final String resourceGroupId;
  /// The security group ID for the control plane.
  final String securityGroupId;
  /// The Service CIDR block.
  final String serviceCidr;
  /// Cluster operational status.
  final String state;
  /// Cluster resource tags.
  final Map<String, String> tags;
  /// Cluster time zone.
  final String timezone;
  /// The Virtual Private Cloud (VPC) used by the cluster.
  final String vpcId;
  /// Virtual switches for the cluster control plane.
  final List<String> vswitchIds;

  /// Creates a new [GetClustersCluster].
  /// [autoMode] **NOTE:** This field is only available when `enable_details` is `true`. Intelligent managed mode configuration.
  /// [clusterDomain] The local domain name of the cluster.
  /// [clusterId] The cluster ID.
  /// [clusterName] Custom cluster name.
  /// [clusterSpec] The specification of the clusters to query. Valid values:
  /// [clusterType] The type of the clusters to query. Valid values:
  /// [currentVersion] The current version of the cluster.
  /// [deletionProtection] Cluster deletion protection prevents accidental deletion of the cluster through the console or API.
  /// [id] The ID of the resource supplied above.
  /// [ipStack] The IP protocol stack of the cluster.
  /// [maintenanceWindow] **NOTE:** This field is only available when `enable_details` is `true`. Cluster maintenance window.
  /// [nodeCidrMask] **NOTE:** This field is only available when `enable_details` is `true`. The number of IP addresses per node, determined by specifying the CIDR block of the network.
  /// [operationPolicy] **NOTE:** This field is only available when `enable_details` is `true`. The automatic operations and maintenance policy for the cluster.
  /// [podCidr] The CIDR block for the pod network.
  /// [profile] The subtype of the clusters to query. Valid values:
  /// [proxyMode] kube-proxy proxy mode.
  /// [regionId] The region ID where the cluster is deployed.
  /// [resourceGroupId] The resource group ID of the cluster.
  /// [securityGroupId] The security group ID for the control plane.
  /// [serviceCidr] The Service CIDR block.
  /// [state] Cluster operational status.
  /// [tags] Cluster resource tags.
  /// [timezone] Cluster time zone.
  /// [vpcId] The Virtual Private Cloud (VPC) used by the cluster.
  /// [vswitchIds] Virtual switches for the cluster control plane.
  GetClustersCluster({
    required this.autoMode,
    required this.clusterDomain,
    required this.clusterId,
    required this.clusterName,
    required this.clusterSpec,
    required this.clusterType,
    required this.currentVersion,
    required this.deletionProtection,
    required this.id,
    required this.ipStack,
    required this.maintenanceWindow,
    required this.nodeCidrMask,
    required this.operationPolicy,
    required this.podCidr,
    required this.profile,
    required this.proxyMode,
    required this.regionId,
    required this.resourceGroupId,
    required this.securityGroupId,
    required this.serviceCidr,
    required this.state,
    required this.tags,
    required this.timezone,
    required this.vpcId,
    required this.vswitchIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoMode': autoMode.toMap(),
      'clusterDomain': clusterDomain,
      'clusterId': clusterId,
      'clusterName': clusterName,
      'clusterSpec': clusterSpec,
      'clusterType': clusterType,
      'currentVersion': currentVersion,
      'deletionProtection': deletionProtection,
      'id': id,
      'ipStack': ipStack,
      'maintenanceWindow': maintenanceWindow.toMap(),
      'nodeCidrMask': nodeCidrMask,
      'operationPolicy': operationPolicy.toMap(),
      'podCidr': podCidr,
      'profile': profile,
      'proxyMode': proxyMode,
      'regionId': regionId,
      'resourceGroupId': resourceGroupId,
      'securityGroupId': securityGroupId,
      'serviceCidr': serviceCidr,
      'state': state,
      'tags': tags,
      'timezone': timezone,
      'vpcId': vpcId,
      'vswitchIds': vswitchIds,
    };
  }

  factory GetClustersCluster.fromMap(Map<String, dynamic> map) {
    return GetClustersCluster(
      autoMode: GetClustersClusterAutoMode.fromMap((map['autoMode'] as Map).cast<String, dynamic>()),
      clusterDomain: map['clusterDomain'] as String,
      clusterId: map['clusterId'] as String,
      clusterName: map['clusterName'] as String,
      clusterSpec: map['clusterSpec'] as String,
      clusterType: map['clusterType'] as String,
      currentVersion: map['currentVersion'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      id: map['id'] as String,
      ipStack: map['ipStack'] as String,
      maintenanceWindow: GetClustersClusterMaintenanceWindow.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>()),
      nodeCidrMask: map['nodeCidrMask'] as String,
      operationPolicy: GetClustersClusterOperationPolicy.fromMap((map['operationPolicy'] as Map).cast<String, dynamic>()),
      podCidr: map['podCidr'] as String,
      profile: map['profile'] as String,
      proxyMode: map['proxyMode'] as String,
      regionId: map['regionId'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      securityGroupId: map['securityGroupId'] as String,
      serviceCidr: map['serviceCidr'] as String,
      state: map['state'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      timezone: map['timezone'] as String,
      vpcId: map['vpcId'] as String,
      vswitchIds: (map['vswitchIds'] as List).cast<String>(),
    );
  }
}

