// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cluster_node_pool_autoscaling/get_cluster_node_pool_autoscaling.dart';
import '../get_cluster_node_pool_management/get_cluster_node_pool_management.dart';
import '../get_cluster_node_pool_network_config/get_cluster_node_pool_network_config.dart';
import '../get_cluster_node_pool_node_config/get_cluster_node_pool_node_config.dart';
import '../get_cluster_node_pool_node_drain_config/get_cluster_node_pool_node_drain_config.dart';
import '../get_cluster_node_pool_placement_policy/get_cluster_node_pool_placement_policy.dart';
import '../get_cluster_node_pool_queued_provisioning/get_cluster_node_pool_queued_provisioning.dart';
import '../get_cluster_node_pool_upgrade_setting/get_cluster_node_pool_upgrade_setting.dart';

class GetClusterNodePool {
  /// Configuration required by cluster autoscaler to adjust the size of the node pool to the current cluster usage.
  final List<GetClusterNodePoolAutoscaling> autoscalings;

  /// The initial number of nodes for the pool. In regional or multi-zonal clusters, this is the number of nodes per zone. Changing this will force recreation of the resource.
  final int initialNodeCount;

  /// The resource URLs of the managed instance groups associated with this node pool.
  final List<String> instanceGroupUrls;

  /// List of instance group URLs which have been assigned to this node pool.
  final List<String> managedInstanceGroupUrls;

  /// Node management configuration, wherein auto-repair and auto-upgrade is configured.
  final List<GetClusterNodePoolManagement> managements;

  /// The maximum number of pods per node in this node pool. Note that this does not work on node pools which are "route-based" - that is, node pools belonging to clusters that do not have IP Aliasing enabled.
  final int maxPodsPerNode;

  /// The name of the cluster.
  final String name;

  /// Creates a unique name for the node pool beginning with the specified prefix. Conflicts with name.
  final String namePrefix;

  /// Networking configuration for this NodePool. If specified, it overrides the cluster-level defaults.
  final List<GetClusterNodePoolNetworkConfig> networkConfigs;

  /// The configuration of the nodepool
  final List<GetClusterNodePoolNodeConfig> nodeConfigs;

  /// The number of nodes per instance group. This field can be used to update the number of nodes per instance group but should not be used alongside autoscaling.
  final int nodeCount;

  /// Node drain configuration for this NodePool.
  final List<GetClusterNodePoolNodeDrainConfig> nodeDrainConfigs;

  /// The list of zones in which the node pool's nodes should be located. Nodes must be in the region of their regional cluster or in the same region as their cluster's zone for zonal clusters. If unspecified, the cluster-level node_locations will be used.
  final List<String> nodeLocations;

  /// Specifies the node placement policy
  final List<GetClusterNodePoolPlacementPolicy> placementPolicies;

  /// Specifies the configuration of queued provisioning
  final List<GetClusterNodePoolQueuedProvisioning> queuedProvisionings;

  /// Specify node upgrade settings to change how many nodes GKE attempts to upgrade at once. The number of nodes upgraded simultaneously is the sum of max_surge and max_unavailable. The maximum number of nodes upgraded simultaneously is limited to 20.
  final List<GetClusterNodePoolUpgradeSetting> upgradeSettings;
  final String version;

  GetClusterNodePool({
    required this.autoscalings,
    required this.initialNodeCount,
    required this.instanceGroupUrls,
    required this.managedInstanceGroupUrls,
    required this.managements,
    required this.maxPodsPerNode,
    required this.name,
    required this.namePrefix,
    required this.networkConfigs,
    required this.nodeConfigs,
    required this.nodeCount,
    required this.nodeDrainConfigs,
    required this.nodeLocations,
    required this.placementPolicies,
    required this.queuedProvisionings,
    required this.upgradeSettings,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalings'] =
        Input.encodeList<GetClusterNodePoolAutoscaling, Map<String, dynamic>>(
            autoscalings, (value) => value.toMap());
    map['initialNodeCount'] = initialNodeCount;
    map['instanceGroupUrls'] = instanceGroupUrls;
    map['managedInstanceGroupUrls'] = managedInstanceGroupUrls;
    map['managements'] =
        Input.encodeList<GetClusterNodePoolManagement, Map<String, dynamic>>(
            managements, (value) => value.toMap());
    map['maxPodsPerNode'] = maxPodsPerNode;
    map['name'] = name;
    map['namePrefix'] = namePrefix;
    map['networkConfigs'] =
        Input.encodeList<GetClusterNodePoolNetworkConfig, Map<String, dynamic>>(
            networkConfigs, (value) => value.toMap());
    map['nodeConfigs'] =
        Input.encodeList<GetClusterNodePoolNodeConfig, Map<String, dynamic>>(
            nodeConfigs, (value) => value.toMap());
    map['nodeCount'] = nodeCount;
    map['nodeDrainConfigs'] = Input.encodeList<
        GetClusterNodePoolNodeDrainConfig,
        Map<String, dynamic>>(nodeDrainConfigs, (value) => value.toMap());
    map['nodeLocations'] = nodeLocations;
    map['placementPolicies'] = Input.encodeList<
        GetClusterNodePoolPlacementPolicy,
        Map<String, dynamic>>(placementPolicies, (value) => value.toMap());
    map['queuedProvisionings'] = Input.encodeList<
        GetClusterNodePoolQueuedProvisioning,
        Map<String, dynamic>>(queuedProvisionings, (value) => value.toMap());
    map['upgradeSettings'] = Input.encodeList<GetClusterNodePoolUpgradeSetting,
        Map<String, dynamic>>(upgradeSettings, (value) => value.toMap());
    map['version'] = version;
    return map;
  }

  factory GetClusterNodePool.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePool(
      autoscalings: Input.decodeList<GetClusterNodePoolAutoscaling>(
          map['autoscalings'],
          (value) => GetClusterNodePoolAutoscaling.fromMap(
              (value as Map).cast<String, dynamic>())),
      initialNodeCount: map['initialNodeCount'] as int,
      instanceGroupUrls: (map['instanceGroupUrls'] as List).cast<String>(),
      managedInstanceGroupUrls:
          (map['managedInstanceGroupUrls'] as List).cast<String>(),
      managements: Input.decodeList<GetClusterNodePoolManagement>(
          map['managements'],
          (value) => GetClusterNodePoolManagement.fromMap(
              (value as Map).cast<String, dynamic>())),
      maxPodsPerNode: map['maxPodsPerNode'] as int,
      name: map['name'] as String,
      namePrefix: map['namePrefix'] as String,
      networkConfigs: Input.decodeList<GetClusterNodePoolNetworkConfig>(
          map['networkConfigs'],
          (value) => GetClusterNodePoolNetworkConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      nodeConfigs: Input.decodeList<GetClusterNodePoolNodeConfig>(
          map['nodeConfigs'],
          (value) => GetClusterNodePoolNodeConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      nodeCount: map['nodeCount'] as int,
      nodeDrainConfigs: Input.decodeList<GetClusterNodePoolNodeDrainConfig>(
          map['nodeDrainConfigs'],
          (value) => GetClusterNodePoolNodeDrainConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      nodeLocations: (map['nodeLocations'] as List).cast<String>(),
      placementPolicies: Input.decodeList<GetClusterNodePoolPlacementPolicy>(
          map['placementPolicies'],
          (value) => GetClusterNodePoolPlacementPolicy.fromMap(
              (value as Map).cast<String, dynamic>())),
      queuedProvisionings:
          Input.decodeList<GetClusterNodePoolQueuedProvisioning>(
              map['queuedProvisionings'],
              (value) => GetClusterNodePoolQueuedProvisioning.fromMap(
                  (value as Map).cast<String, dynamic>())),
      upgradeSettings: Input.decodeList<GetClusterNodePoolUpgradeSetting>(
          map['upgradeSettings'],
          (value) => GetClusterNodePoolUpgradeSetting.fromMap(
              (value as Map).cast<String, dynamic>())),
      version: map['version'] as String,
    );
  }
}
