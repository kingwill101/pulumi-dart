// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_node_pool_autoscaling/cluster_node_pool_autoscaling.dart';
import '../cluster_node_pool_management/cluster_node_pool_management.dart';
import '../cluster_node_pool_network_config/cluster_node_pool_network_config.dart';
import '../cluster_node_pool_node_config/cluster_node_pool_node_config.dart';
import '../cluster_node_pool_node_drain_config/cluster_node_pool_node_drain_config.dart';
import '../cluster_node_pool_placement_policy/cluster_node_pool_placement_policy.dart';
import '../cluster_node_pool_queued_provisioning/cluster_node_pool_queued_provisioning.dart';
import '../cluster_node_pool_upgrade_settings/cluster_node_pool_upgrade_settings.dart';

class ClusterNodePool {
  /// Configuration required by cluster autoscaler to adjust the size of the node pool to the current cluster usage.
  final ClusterNodePoolAutoscaling? autoscaling;

  /// The number of nodes to create in this
  /// cluster's default node pool. In regional or multi-zonal clusters, this is the
  /// number of nodes per zone. Must be set if <span pulumi-lang-nodejs="`nodePool`" pulumi-lang-dotnet="`NodePool`" pulumi-lang-go="`nodePool`" pulumi-lang-python="`node_pool`" pulumi-lang-yaml="`nodePool`" pulumi-lang-java="`nodePool`">`node_pool`</span> is not set. If you're using
  /// <span pulumi-lang-nodejs="`gcp.container.NodePool`" pulumi-lang-dotnet="`gcp.container.NodePool`" pulumi-lang-go="`container.NodePool`" pulumi-lang-python="`container.NodePool`" pulumi-lang-yaml="`gcp.container.NodePool`" pulumi-lang-java="`gcp.container.NodePool`">`gcp.container.NodePool`</span> objects with no default node pool, you'll need to
  /// set this to a value of at least <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>, alongside setting
  /// <span pulumi-lang-nodejs="`removeDefaultNodePool`" pulumi-lang-dotnet="`RemoveDefaultNodePool`" pulumi-lang-go="`removeDefaultNodePool`" pulumi-lang-python="`remove_default_node_pool`" pulumi-lang-yaml="`removeDefaultNodePool`" pulumi-lang-java="`removeDefaultNodePool`">`remove_default_node_pool`</span> to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final int? initialNodeCount;

  /// The resource URLs of the managed instance groups associated with this node pool.
  final List<String>? instanceGroupUrls;

  /// List of instance group URLs which have been assigned to this node pool.
  final List<String>? managedInstanceGroupUrls;

  /// Node management configuration, wherein auto-repair and auto-upgrade is configured.
  final ClusterNodePoolManagement? management;

  /// The maximum number of pods per node in this node pool. Note that this does not work on node pools which are "route-based" - that is, node pools belonging to clusters that do not have IP Aliasing enabled.
  final int? maxPodsPerNode;

  /// The name of the cluster, unique within the project and
  /// location.
  ///
  /// - - -
  final String? name;

  /// Creates a unique name for the node pool beginning with the specified prefix. Conflicts with name.
  final String? namePrefix;

  /// Configuration for
  /// [Adding Pod IP address ranges](https://cloud.google.com/kubernetes-engine/docs/how-to/multi-pod-cidr)) to the node pool. Structure is documented below
  final ClusterNodePoolNetworkConfig? networkConfig;

  /// Parameters used in creating the default node pool.
  /// Generally, this field should not be used at the same time as a
  /// <span pulumi-lang-nodejs="`gcp.container.NodePool`" pulumi-lang-dotnet="`gcp.container.NodePool`" pulumi-lang-go="`container.NodePool`" pulumi-lang-python="`container.NodePool`" pulumi-lang-yaml="`gcp.container.NodePool`" pulumi-lang-java="`gcp.container.NodePool`">`gcp.container.NodePool`</span> or a <span pulumi-lang-nodejs="`nodePool`" pulumi-lang-dotnet="`NodePool`" pulumi-lang-go="`nodePool`" pulumi-lang-python="`node_pool`" pulumi-lang-yaml="`nodePool`" pulumi-lang-java="`nodePool`">`node_pool`</span> block; this configuration
  /// manages the default node pool, which isn't recommended to be used.
  /// Structure is documented below.
  final ClusterNodePoolNodeConfig? nodeConfig;

  /// The number of nodes per instance group. This field can be used to update the number of nodes per instance group but should not be used alongside autoscaling.
  final int? nodeCount;

  /// Node drain configuration for this NodePool.
  final List<ClusterNodePoolNodeDrainConfig>? nodeDrainConfigs;

  /// The list of zones in which the cluster's nodes
  /// are located. Nodes must be in the region of their regional cluster or in the
  /// same region as their cluster's zone for zonal clusters. If this is specified for
  /// a zonal cluster, omit the cluster's zone.
  ///
  /// > A "multi-zonal" cluster is a zonal cluster with at least one additional zone
  /// defined; in a multi-zonal cluster, the cluster master is only present in a
  /// single zone while nodes are present in each of the primary zone and the node
  /// locations. In contrast, in a regional cluster, cluster master nodes are present
  /// in multiple zones in the region. For that reason, regional clusters should be
  /// preferred.
  final List<String>? nodeLocations;

  /// Specifies the node placement policy
  final ClusterNodePoolPlacementPolicy? placementPolicy;

  /// Specifies the configuration of queued provisioning
  final ClusterNodePoolQueuedProvisioning? queuedProvisioning;

  /// Specify node upgrade settings to change how many nodes GKE attempts to upgrade at once. The number of nodes upgraded simultaneously is the sum of<span pulumi-lang-nodejs=" maxSurge " pulumi-lang-dotnet=" MaxSurge " pulumi-lang-go=" maxSurge " pulumi-lang-python=" max_surge " pulumi-lang-yaml=" maxSurge " pulumi-lang-java=" maxSurge "> max_surge </span>and max_unavailable. The maximum number of nodes upgraded simultaneously is limited to 20.
  final ClusterNodePoolUpgradeSettings? upgradeSettings;
  final String? version;

  ClusterNodePool({
    this.autoscaling,
    this.initialNodeCount,
    this.instanceGroupUrls,
    this.managedInstanceGroupUrls,
    this.management,
    this.maxPodsPerNode,
    this.name,
    this.namePrefix,
    this.networkConfig,
    this.nodeConfig,
    this.nodeCount,
    this.nodeDrainConfigs,
    this.nodeLocations,
    this.placementPolicy,
    this.queuedProvisioning,
    this.upgradeSettings,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoscalingValue = autoscaling;
    if (autoscalingValue != null) {
      map['autoscaling'] = autoscalingValue.toMap();
    }
    final initialNodeCountValue = initialNodeCount;
    if (initialNodeCountValue != null) {
      map['initialNodeCount'] = initialNodeCountValue;
    }
    final instanceGroupUrlsValue = instanceGroupUrls;
    if (instanceGroupUrlsValue != null) {
      map['instanceGroupUrls'] = instanceGroupUrlsValue;
    }
    final managedInstanceGroupUrlsValue = managedInstanceGroupUrls;
    if (managedInstanceGroupUrlsValue != null) {
      map['managedInstanceGroupUrls'] = managedInstanceGroupUrlsValue;
    }
    final managementValue = management;
    if (managementValue != null) {
      map['management'] = managementValue.toMap();
    }
    final maxPodsPerNodeValue = maxPodsPerNode;
    if (maxPodsPerNodeValue != null) {
      map['maxPodsPerNode'] = maxPodsPerNodeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] = networkConfigValue.toMap();
    }
    final nodeConfigValue = nodeConfig;
    if (nodeConfigValue != null) {
      map['nodeConfig'] = nodeConfigValue.toMap();
    }
    final nodeCountValue = nodeCount;
    if (nodeCountValue != null) {
      map['nodeCount'] = nodeCountValue;
    }
    final nodeDrainConfigsValue = nodeDrainConfigs;
    if (nodeDrainConfigsValue != null) {
      map['nodeDrainConfigs'] = Input.encodeList<ClusterNodePoolNodeDrainConfig,
              Map<String, dynamic>>(
          nodeDrainConfigsValue, (value) => value.toMap());
    }
    final nodeLocationsValue = nodeLocations;
    if (nodeLocationsValue != null) {
      map['nodeLocations'] = nodeLocationsValue;
    }
    final placementPolicyValue = placementPolicy;
    if (placementPolicyValue != null) {
      map['placementPolicy'] = placementPolicyValue.toMap();
    }
    final queuedProvisioningValue = queuedProvisioning;
    if (queuedProvisioningValue != null) {
      map['queuedProvisioning'] = queuedProvisioningValue.toMap();
    }
    final upgradeSettingsValue = upgradeSettings;
    if (upgradeSettingsValue != null) {
      map['upgradeSettings'] = upgradeSettingsValue.toMap();
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory ClusterNodePool.fromMap(Map<String, dynamic> map) {
    return ClusterNodePool(
      autoscaling: map['autoscaling'] == null
          ? null
          : ClusterNodePoolAutoscaling.fromMap(
              (map['autoscaling'] as Map).cast<String, dynamic>()),
      initialNodeCount: map['initialNodeCount'] == null
          ? null
          : map['initialNodeCount'] as int,
      instanceGroupUrls: map['instanceGroupUrls'] == null
          ? null
          : (map['instanceGroupUrls'] as List).cast<String>(),
      managedInstanceGroupUrls: map['managedInstanceGroupUrls'] == null
          ? null
          : (map['managedInstanceGroupUrls'] as List).cast<String>(),
      management: map['management'] == null
          ? null
          : ClusterNodePoolManagement.fromMap(
              (map['management'] as Map).cast<String, dynamic>()),
      maxPodsPerNode:
          map['maxPodsPerNode'] == null ? null : map['maxPodsPerNode'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      namePrefix:
          map['namePrefix'] == null ? null : map['namePrefix'] as String,
      networkConfig: map['networkConfig'] == null
          ? null
          : ClusterNodePoolNetworkConfig.fromMap(
              (map['networkConfig'] as Map).cast<String, dynamic>()),
      nodeConfig: map['nodeConfig'] == null
          ? null
          : ClusterNodePoolNodeConfig.fromMap(
              (map['nodeConfig'] as Map).cast<String, dynamic>()),
      nodeCount: map['nodeCount'] == null ? null : map['nodeCount'] as int,
      nodeDrainConfigs: map['nodeDrainConfigs'] == null
          ? null
          : Input.decodeList<ClusterNodePoolNodeDrainConfig>(
              map['nodeDrainConfigs'],
              (value) => ClusterNodePoolNodeDrainConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      nodeLocations: map['nodeLocations'] == null
          ? null
          : (map['nodeLocations'] as List).cast<String>(),
      placementPolicy: map['placementPolicy'] == null
          ? null
          : ClusterNodePoolPlacementPolicy.fromMap(
              (map['placementPolicy'] as Map).cast<String, dynamic>()),
      queuedProvisioning: map['queuedProvisioning'] == null
          ? null
          : ClusterNodePoolQueuedProvisioning.fromMap(
              (map['queuedProvisioning'] as Map).cast<String, dynamic>()),
      upgradeSettings: map['upgradeSettings'] == null
          ? null
          : ClusterNodePoolUpgradeSettings.fromMap(
              (map['upgradeSettings'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
