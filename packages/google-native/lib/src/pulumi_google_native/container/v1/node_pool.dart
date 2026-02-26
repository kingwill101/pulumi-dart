// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'best_effort_provisioning.dart';
import 'max_pods_constraint.dart';
import 'node_config4.dart';
import 'node_management.dart';
import 'node_network_config.dart';
import 'node_pool_autoscaling.dart';
import 'placement_policy2.dart';
import 'queued_provisioning.dart';
import 'status_condition.dart';
import 'upgrade_settings.dart';

/// NodePool contains the name and configuration for a cluster's node pool. Node pools are a set of nodes (i.e. VM's), with a common configuration and specification, under the control of the cluster master. They may have a set of Kubernetes labels applied to them, which may be used to reference them during pod scheduling. They may also be resized up or down, to accommodate the workload.
class NodePool {
  /// Autoscaler configuration for this NodePool. Autoscaler is enabled only if a valid configuration is present.
  final NodePoolAutoscaling? autoscaling;

  /// Enable best effort provisioning for nodes
  final BestEffortProvisioning? bestEffortProvisioning;

  /// Which conditions caused the current node pool state.
  final List<StatusCondition>? conditions;

  /// The node configuration of the pool.
  final NodeConfig4? config;

  /// This checksum is computed by the server based on the value of node pool fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
  final String? etag;

  /// The initial node count for the pool. You must ensure that your Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is sufficient for this number of instances. You must also have available firewall and routes quota.
  final int? initialNodeCount;

  /// The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the NodePool's nodes should be located. If this value is unspecified during node pool creation, the [Cluster.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#Cluster.FIELDS.locations) value will be used, instead. Warning: changing node pool locations will result in nodes being added and/or removed.
  final List<String>? locations;

  /// NodeManagement configuration for this NodePool.
  final NodeManagement? management;

  /// The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  final MaxPodsConstraint? maxPodsConstraint;

  /// The name of the node pool.
  final String? name;

  /// Networking configuration for this NodePool. If specified, it overrides the cluster-level defaults.
  final NodeNetworkConfig? networkConfig;

  /// Specifies the node placement policy.
  final PlacementPolicy2? placementPolicy;

  /// Specifies the configuration of queued provisioning.
  final QueuedProvisioning? queuedProvisioning;

  /// Upgrade settings control disruption and speed of the upgrade.
  final UpgradeSettings? upgradeSettings;

  /// The version of Kubernetes running on this NodePool's nodes. If unspecified, it defaults as described [here](https://cloud.google.com/kubernetes-engine/versioning#specifying_node_version).
  final String? version;

  NodePool({
    this.autoscaling,
    this.bestEffortProvisioning,
    this.conditions,
    this.config,
    this.etag,
    this.initialNodeCount,
    this.locations,
    this.management,
    this.maxPodsConstraint,
    this.name,
    this.networkConfig,
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
    final bestEffortProvisioningValue = bestEffortProvisioning;
    if (bestEffortProvisioningValue != null) {
      map['bestEffortProvisioning'] = bestEffortProvisioningValue.toMap();
    }
    final conditionsValue = conditions;
    if (conditionsValue != null) {
      map['conditions'] =
          Input.encodeList<StatusCondition, Map<String, dynamic>>(
              conditionsValue, (value) => value.toMap());
    }
    final configValue = config;
    if (configValue != null) {
      map['config'] = configValue.toMap();
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final initialNodeCountValue = initialNodeCount;
    if (initialNodeCountValue != null) {
      map['initialNodeCount'] = initialNodeCountValue;
    }
    final locationsValue = locations;
    if (locationsValue != null) {
      map['locations'] = locationsValue;
    }
    final managementValue = management;
    if (managementValue != null) {
      map['management'] = managementValue.toMap();
    }
    final maxPodsConstraintValue = maxPodsConstraint;
    if (maxPodsConstraintValue != null) {
      map['maxPodsConstraint'] = maxPodsConstraintValue.toMap();
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] = networkConfigValue.toMap();
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

  factory NodePool.fromMap(Map<String, dynamic> map) {
    return NodePool(
      autoscaling: map['autoscaling'] == null
          ? null
          : NodePoolAutoscaling.fromMap(
              (map['autoscaling'] as Map).cast<String, dynamic>()),
      bestEffortProvisioning: map['bestEffortProvisioning'] == null
          ? null
          : BestEffortProvisioning.fromMap(
              (map['bestEffortProvisioning'] as Map).cast<String, dynamic>()),
      conditions: map['conditions'] == null
          ? null
          : Input.decodeList<StatusCondition>(
              map['conditions'],
              (value) => StatusCondition.fromMap(
                  (value as Map).cast<String, dynamic>())),
      config: map['config'] == null
          ? null
          : NodeConfig4.fromMap((map['config'] as Map).cast<String, dynamic>()),
      etag: map['etag'] == null ? null : map['etag'] as String,
      initialNodeCount: map['initialNodeCount'] == null
          ? null
          : map['initialNodeCount'] as int,
      locations: map['locations'] == null
          ? null
          : (map['locations'] as List).cast<String>(),
      management: map['management'] == null
          ? null
          : NodeManagement.fromMap(
              (map['management'] as Map).cast<String, dynamic>()),
      maxPodsConstraint: map['maxPodsConstraint'] == null
          ? null
          : MaxPodsConstraint.fromMap(
              (map['maxPodsConstraint'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      networkConfig: map['networkConfig'] == null
          ? null
          : NodeNetworkConfig.fromMap(
              (map['networkConfig'] as Map).cast<String, dynamic>()),
      placementPolicy: map['placementPolicy'] == null
          ? null
          : PlacementPolicy2.fromMap(
              (map['placementPolicy'] as Map).cast<String, dynamic>()),
      queuedProvisioning: map['queuedProvisioning'] == null
          ? null
          : QueuedProvisioning.fromMap(
              (map['queuedProvisioning'] as Map).cast<String, dynamic>()),
      upgradeSettings: map['upgradeSettings'] == null
          ? null
          : UpgradeSettings.fromMap(
              (map['upgradeSettings'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
