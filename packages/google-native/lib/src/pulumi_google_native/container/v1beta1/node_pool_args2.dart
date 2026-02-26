// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'best_effort_provisioning2.dart';
import 'max_pods_constraint2.dart';
import 'node_config5.dart';
import 'node_management2.dart';
import 'node_network_config2.dart';
import 'node_pool_autoscaling2.dart';
import 'placement_policy3.dart';
import 'queued_provisioning2.dart';
import 'status_condition2.dart';
import 'upgrade_settings2.dart';

/// The set of arguments for NodePool.
class NodePoolArgs2 {
  /// Autoscaler configuration for this NodePool. Autoscaler is enabled only if a valid configuration is present.
  final Input<NodePoolAutoscaling2>? autoscaling;

  /// Enable best effort provisioning for nodes
  final Input<BestEffortProvisioning2>? bestEffortProvisioning;

  /// Deprecated. The name of the cluster. This field has been deprecated and replaced by the parent field.
  final Input<String> clusterId;

  /// Which conditions caused the current node pool state.
  final Input<List<StatusCondition2>>? conditions;

  /// The node configuration of the pool.
  final Input<NodeConfig5>? config;

  /// This checksum is computed by the server based on the value of node pool fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
  final Input<String>? etag;

  /// The initial node count for the pool. You must ensure that your Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is sufficient for this number of instances. You must also have available firewall and routes quota.
  final Input<int>? initialNodeCount;
  final Input<String>? location;

  /// The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the NodePool's nodes should be located. If this value is unspecified during node pool creation, the [Cluster.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#Cluster.FIELDS.locations) value will be used, instead. Warning: changing node pool locations will result in nodes being added and/or removed.
  final Input<List<String>>? locations;

  /// NodeManagement configuration for this NodePool.
  final Input<NodeManagement2>? management;

  /// The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  final Input<MaxPodsConstraint2>? maxPodsConstraint;

  /// The name of the node pool.
  final Input<String>? name;

  /// Networking configuration for this NodePool. If specified, it overrides the cluster-level defaults.
  final Input<NodeNetworkConfig2>? networkConfig;

  /// The parent (project, location, cluster name) where the node pool will be created. Specified in the format `projects/*/locations/*/clusters/*`.
  final Input<String>? parent;

  /// Specifies the node placement policy.
  final Input<PlacementPolicy3>? placementPolicy;

  /// Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the parent field.
  final Input<String>? project;

  /// Specifies the configuration of queued provisioning.
  final Input<QueuedProvisioning2>? queuedProvisioning;

  /// Upgrade settings control disruption and speed of the upgrade.
  final Input<UpgradeSettings2>? upgradeSettings;

  /// The version of Kubernetes running on this NodePool's nodes. If unspecified, it defaults as described [here](https://cloud.google.com/kubernetes-engine/versioning#specifying_node_version).
  final Input<String>? version;

  /// Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the parent field.
  final Input<String>? zone;

  NodePoolArgs2({
    this.autoscaling,
    this.bestEffortProvisioning,
    required this.clusterId,
    this.conditions,
    this.config,
    this.etag,
    this.initialNodeCount,
    this.location,
    this.locations,
    this.management,
    this.maxPodsConstraint,
    this.name,
    this.networkConfig,
    this.parent,
    this.placementPolicy,
    this.project,
    this.queuedProvisioning,
    this.upgradeSettings,
    this.version,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoscalingValue = autoscaling;
    if (autoscalingValue != null) {
      map['autoscaling'] = Input.mapOptionalInputValue<NodePoolAutoscaling2,
          Map<String, dynamic>>(autoscalingValue, (value) => value.toMap());
    }
    final bestEffortProvisioningValue = bestEffortProvisioning;
    if (bestEffortProvisioningValue != null) {
      map['bestEffortProvisioning'] = Input.mapOptionalInputValue<
              BestEffortProvisioning2, Map<String, dynamic>>(
          bestEffortProvisioningValue, (value) => value.toMap());
    }
    map['clusterId'] = clusterId;
    final conditionsValue = conditions;
    if (conditionsValue != null) {
      map['conditions'] = Input.mapOptionalInputValue<List<StatusCondition2>,
              List<Map<String, dynamic>>>(
          conditionsValue,
          (value) => Input.encodeList<StatusCondition2, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final configValue = config;
    if (configValue != null) {
      map['config'] =
          Input.mapOptionalInputValue<NodeConfig5, Map<String, dynamic>>(
              configValue, (value) => value.toMap());
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final initialNodeCountValue = initialNodeCount;
    if (initialNodeCountValue != null) {
      map['initialNodeCount'] = initialNodeCountValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final locationsValue = locations;
    if (locationsValue != null) {
      map['locations'] = locationsValue;
    }
    final managementValue = management;
    if (managementValue != null) {
      map['management'] =
          Input.mapOptionalInputValue<NodeManagement2, Map<String, dynamic>>(
              managementValue, (value) => value.toMap());
    }
    final maxPodsConstraintValue = maxPodsConstraint;
    if (maxPodsConstraintValue != null) {
      map['maxPodsConstraint'] =
          Input.mapOptionalInputValue<MaxPodsConstraint2, Map<String, dynamic>>(
              maxPodsConstraintValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] =
          Input.mapOptionalInputValue<NodeNetworkConfig2, Map<String, dynamic>>(
              networkConfigValue, (value) => value.toMap());
    }
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    final placementPolicyValue = placementPolicy;
    if (placementPolicyValue != null) {
      map['placementPolicy'] =
          Input.mapOptionalInputValue<PlacementPolicy3, Map<String, dynamic>>(
              placementPolicyValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final queuedProvisioningValue = queuedProvisioning;
    if (queuedProvisioningValue != null) {
      map['queuedProvisioning'] = Input.mapOptionalInputValue<
              QueuedProvisioning2, Map<String, dynamic>>(
          queuedProvisioningValue, (value) => value.toMap());
    }
    final upgradeSettingsValue = upgradeSettings;
    if (upgradeSettingsValue != null) {
      map['upgradeSettings'] =
          Input.mapOptionalInputValue<UpgradeSettings2, Map<String, dynamic>>(
              upgradeSettingsValue, (value) => value.toMap());
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory NodePoolArgs2.fromMap(Map<String, dynamic> map) {
    return NodePoolArgs2(
      autoscaling:
          Input.asOptionalInput<NodePoolAutoscaling2>(map['autoscaling']),
      bestEffortProvisioning: Input.asOptionalInput<BestEffortProvisioning2>(
          map['bestEffortProvisioning']),
      clusterId: Input.asInput<String>(map['clusterId']),
      conditions:
          Input.asOptionalInput<List<StatusCondition2>>(map['conditions']),
      config: Input.asOptionalInput<NodeConfig5>(map['config']),
      etag: Input.asOptionalInput<String>(map['etag']),
      initialNodeCount: Input.asOptionalInput<int>(map['initialNodeCount']),
      location: Input.asOptionalInput<String>(map['location']),
      locations: Input.asOptionalInput<List<String>>(map['locations']),
      management: Input.asOptionalInput<NodeManagement2>(map['management']),
      maxPodsConstraint:
          Input.asOptionalInput<MaxPodsConstraint2>(map['maxPodsConstraint']),
      name: Input.asOptionalInput<String>(map['name']),
      networkConfig:
          Input.asOptionalInput<NodeNetworkConfig2>(map['networkConfig']),
      parent: Input.asOptionalInput<String>(map['parent']),
      placementPolicy:
          Input.asOptionalInput<PlacementPolicy3>(map['placementPolicy']),
      project: Input.asOptionalInput<String>(map['project']),
      queuedProvisioning:
          Input.asOptionalInput<QueuedProvisioning2>(map['queuedProvisioning']),
      upgradeSettings:
          Input.asOptionalInput<UpgradeSettings2>(map['upgradeSettings']),
      version: Input.asOptionalInput<String>(map['version']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
