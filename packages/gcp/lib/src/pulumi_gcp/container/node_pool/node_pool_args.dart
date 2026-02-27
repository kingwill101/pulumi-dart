// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../node_pool_autoscaling/node_pool_autoscaling.dart';
import '../node_pool_management/node_pool_management.dart';
import '../node_pool_network_config/node_pool_network_config.dart';
import '../node_pool_node_config/node_pool_node_config.dart';
import '../node_pool_node_drain_config/node_pool_node_drain_config.dart';
import '../node_pool_placement_policy/node_pool_placement_policy.dart';
import '../node_pool_queued_provisioning/node_pool_queued_provisioning.dart';
import '../node_pool_upgrade_settings/node_pool_upgrade_settings.dart';

/// The set of arguments for NodePool.
class NodePoolArgs {
  /// Configuration required by cluster autoscaler to adjust
  /// the size of the node pool to the current cluster usage. Structure is documented below.
  final Input<NodePoolAutoscaling>? autoscaling;

  /// The cluster to create the node pool for. Cluster must be present in `location` provided for clusters. May be specified in the format `projects/{{project}}/locations/{{location}}/clusters/{{cluster}}` or as just the name of the cluster.
  ///
  /// - - -
  final Input<String> cluster;

  /// The initial number of nodes for the pool. In
  /// regional or multi-zonal clusters, this is the number of nodes per zone. Changing
  /// this will force recreation of the resource. WARNING: Resizing your node pool manually
  /// may change this value in your existing cluster, which will trigger destruction
  /// and recreation on the next provider run (to rectify the discrepancy).  If you don't
  /// need this value, don't set it.  If you do need it, you can use a lifecycle block to
  /// ignore subsqeuent changes to this field.
  final Input<int>? initialNodeCount;

  /// The location (region or zone) of the cluster.
  ///
  /// - - -
  final Input<String>? location;

  /// Node management configuration, wherein auto-repair and
  /// auto-upgrade is configured. Structure is documented below.
  final Input<NodePoolManagement>? management;

  /// The maximum number of pods per node in this node pool.
  /// Note that this does not work on node pools which are "route-based" - that is, node
  /// pools belonging to clusters that do not have IP Aliasing enabled.
  /// See the [official documentation](https://cloud.google.com/kubernetes-engine/docs/how-to/flexible-pod-cidr)
  /// for more information.
  final Input<int>? maxPodsPerNode;

  /// The name of the node pool. If left blank, the provider will
  /// auto-generate a unique name.
  final Input<String>? name;

  /// Creates a unique name for the node pool beginning
  /// with the specified prefix. Conflicts with `name`.
  final Input<String>? namePrefix;

  /// The network configuration of the pool. Such as
  /// configuration for [Adding Pod IP address ranges](https://cloud.google.com/kubernetes-engine/docs/how-to/multi-pod-cidr)) to the node pool. Or enabling private nodes. Structure is
  /// documented below
  final Input<NodePoolNetworkConfig>? networkConfig;

  /// Parameters used in creating the node pool. See
  /// gcp.container.Cluster for schema.
  final Input<NodePoolNodeConfig>? nodeConfig;

  /// The number of nodes per instance group. This field can be used to
  /// update the number of nodes per instance group but should not be used alongside `autoscaling`.
  final Input<int>? nodeCount;

  /// The node drain configuration of the pool. Structure is documented below.
  final Input<List<NodePoolNodeDrainConfig>>? nodeDrainConfigs;

  /// The list of zones in which the node pool's nodes should be located. Nodes must
  /// be in the region of their regional cluster or in the same region as their
  /// cluster's zone for zonal clusters. If unspecified, the cluster-level
  /// `node_locations` will be used.
  ///
  /// > Note: `node_locations` will not revert to the cluster's default set of zones
  /// upon being unset. You must manually reconcile the list of zones with your
  /// cluster.
  final Input<List<String>>? nodeLocations;

  /// Specifies a custom placement policy for the
  /// nodes.
  final Input<NodePoolPlacementPolicy>? placementPolicy;

  /// The ID of the project in which to create the node pool. If blank,
  /// the provider-configured project will be used.
  final Input<String>? project;

  /// Specifies node pool-level settings of queued provisioning.
  /// Structure is documented below.
  ///
  /// <a name="nested_autoscaling"></a>The `autoscaling` block supports (either total or per zone limits are required):
  final Input<NodePoolQueuedProvisioning>? queuedProvisioning;

  /// Specify node upgrade settings to change how GKE upgrades nodes.
  /// The maximum number of nodes upgraded simultaneously is limited to 20. Structure is documented below.
  final Input<NodePoolUpgradeSettings>? upgradeSettings;

  /// The Kubernetes version for the nodes in this pool. Note that if this field
  /// and `auto_upgrade` are both specified, they will fight each other for what the node version should
  /// be, so setting both is highly discouraged. While a fuzzy version can be specified, it's
  /// recommended that you specify explicit versions as the provider will see spurious diffs
  /// when fuzzy versions are used. See the `gcp.container.getEngineVersions` data source's
  /// `version_prefix` field to approximate fuzzy versions in a provider-compatible way.
  final Input<String>? version;

  NodePoolArgs({
    this.autoscaling,
    required this.cluster,
    this.initialNodeCount,
    this.location,
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
    this.project,
    this.queuedProvisioning,
    this.upgradeSettings,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoscalingValue = autoscaling;
    if (autoscalingValue != null) {
      map['autoscaling'] = Input.mapOptionalInputValue<NodePoolAutoscaling,
          Map<String, dynamic>>(autoscalingValue, (value) => value.toMap());
    }
    map['cluster'] = cluster;
    final initialNodeCountValue = initialNodeCount;
    if (initialNodeCountValue != null) {
      map['initialNodeCount'] = initialNodeCountValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final managementValue = management;
    if (managementValue != null) {
      map['management'] =
          Input.mapOptionalInputValue<NodePoolManagement, Map<String, dynamic>>(
              managementValue, (value) => value.toMap());
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
      map['networkConfig'] = Input.mapOptionalInputValue<NodePoolNetworkConfig,
          Map<String, dynamic>>(networkConfigValue, (value) => value.toMap());
    }
    final nodeConfigValue = nodeConfig;
    if (nodeConfigValue != null) {
      map['nodeConfig'] =
          Input.mapOptionalInputValue<NodePoolNodeConfig, Map<String, dynamic>>(
              nodeConfigValue, (value) => value.toMap());
    }
    final nodeCountValue = nodeCount;
    if (nodeCountValue != null) {
      map['nodeCount'] = nodeCountValue;
    }
    final nodeDrainConfigsValue = nodeDrainConfigs;
    if (nodeDrainConfigsValue != null) {
      map['nodeDrainConfigs'] = Input.mapOptionalInputValue<
              List<NodePoolNodeDrainConfig>, List<Map<String, dynamic>>>(
          nodeDrainConfigsValue,
          (value) =>
              Input.encodeList<NodePoolNodeDrainConfig, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final nodeLocationsValue = nodeLocations;
    if (nodeLocationsValue != null) {
      map['nodeLocations'] = nodeLocationsValue;
    }
    final placementPolicyValue = placementPolicy;
    if (placementPolicyValue != null) {
      map['placementPolicy'] = Input.mapOptionalInputValue<
          NodePoolPlacementPolicy,
          Map<String, dynamic>>(placementPolicyValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final queuedProvisioningValue = queuedProvisioning;
    if (queuedProvisioningValue != null) {
      map['queuedProvisioning'] = Input.mapOptionalInputValue<
              NodePoolQueuedProvisioning, Map<String, dynamic>>(
          queuedProvisioningValue, (value) => value.toMap());
    }
    final upgradeSettingsValue = upgradeSettings;
    if (upgradeSettingsValue != null) {
      map['upgradeSettings'] = Input.mapOptionalInputValue<
          NodePoolUpgradeSettings,
          Map<String, dynamic>>(upgradeSettingsValue, (value) => value.toMap());
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory NodePoolArgs.fromMap(Map<String, dynamic> map) {
    return NodePoolArgs(
      autoscaling:
          Input.asOptionalInput<NodePoolAutoscaling>(map['autoscaling']),
      cluster: Input.asInput<String>(map['cluster']),
      initialNodeCount: Input.asOptionalInput<int>(map['initialNodeCount']),
      location: Input.asOptionalInput<String>(map['location']),
      management: Input.asOptionalInput<NodePoolManagement>(map['management']),
      maxPodsPerNode: Input.asOptionalInput<int>(map['maxPodsPerNode']),
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      networkConfig:
          Input.asOptionalInput<NodePoolNetworkConfig>(map['networkConfig']),
      nodeConfig: Input.asOptionalInput<NodePoolNodeConfig>(map['nodeConfig']),
      nodeCount: Input.asOptionalInput<int>(map['nodeCount']),
      nodeDrainConfigs: Input.asOptionalInput<List<NodePoolNodeDrainConfig>>(
          map['nodeDrainConfigs']),
      nodeLocations: Input.asOptionalInput<List<String>>(map['nodeLocations']),
      placementPolicy: Input.asOptionalInput<NodePoolPlacementPolicy>(
          map['placementPolicy']),
      project: Input.asOptionalInput<String>(map['project']),
      queuedProvisioning: Input.asOptionalInput<NodePoolQueuedProvisioning>(
          map['queuedProvisioning']),
      upgradeSettings: Input.asOptionalInput<NodePoolUpgradeSettings>(
          map['upgradeSettings']),
      version: Input.asOptionalInput<String>(map['version']),
    );
  }
}
