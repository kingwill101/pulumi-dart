// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'best_effort_provisioning.dart';
import 'max_pods_constraint.dart';
import 'node_config.dart';
import 'node_management.dart';
import 'node_network_config.dart';
import 'node_pool_autoscaling.dart';
import 'placement_policy.dart';
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
  final NodeConfig? config;

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
  final PlacementPolicy? placementPolicy;

  /// Specifies the configuration of queued provisioning.
  final QueuedProvisioning? queuedProvisioning;

  /// Upgrade settings control disruption and speed of the upgrade.
  final UpgradeSettings? upgradeSettings;

  /// The version of Kubernetes running on this NodePool's nodes. If unspecified, it defaults as described [here](https://cloud.google.com/kubernetes-engine/versioning#specifying_node_version).
  final String? version;

  /// Creates a new [NodePool].
  /// [autoscaling] Autoscaler configuration for this NodePool. Autoscaler is enabled only if a valid configuration is present.
  /// [bestEffortProvisioning] Enable best effort provisioning for nodes
  /// [conditions] Which conditions caused the current node pool state.
  /// [config] The node configuration of the pool.
  /// [etag] This checksum is computed by the server based on the value of node pool fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
  /// [initialNodeCount] The initial node count for the pool. You must ensure that your Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is sufficient for this number of instances. You must also have available firewall and routes quota.
  /// [locations] The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the NodePool's nodes should be located. If this value is unspecified during node pool creation, the [Cluster.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#Cluster.FIELDS.locations) value will be used, instead. Warning: changing node pool locations will result in nodes being added and/or removed.
  /// [management] NodeManagement configuration for this NodePool.
  /// [maxPodsConstraint] The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  /// [name] The name of the node pool.
  /// [networkConfig] Networking configuration for this NodePool. If specified, it overrides the cluster-level defaults.
  /// [placementPolicy] Specifies the node placement policy.
  /// [queuedProvisioning] Specifies the configuration of queued provisioning.
  /// [upgradeSettings] Upgrade settings control disruption and speed of the upgrade.
  /// [version] The version of Kubernetes running on this NodePool's nodes. If unspecified, it defaults as described [here](https://cloud.google.com/kubernetes-engine/versioning#specifying_node_version).
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
    return <String, dynamic>{
      'autoscaling': ?autoscaling == null ? null : autoscaling!.toMap(),
      'bestEffortProvisioning': ?bestEffortProvisioning == null
          ? null
          : bestEffortProvisioning!.toMap(),
      'conditions': ?conditions == null
          ? null
          : pulumi.Input.encodeList<StatusCondition, Map<String, dynamic>>(
              conditions!,
              (value) => value.toMap(),
            ),
      'config': ?config == null ? null : config!.toMap(),
      'etag': ?etag,
      'initialNodeCount': ?initialNodeCount,
      'locations': ?locations,
      'management': ?management == null ? null : management!.toMap(),
      'maxPodsConstraint': ?maxPodsConstraint == null
          ? null
          : maxPodsConstraint!.toMap(),
      'name': ?name,
      'networkConfig': ?networkConfig == null ? null : networkConfig!.toMap(),
      'placementPolicy': ?placementPolicy == null
          ? null
          : placementPolicy!.toMap(),
      'queuedProvisioning': ?queuedProvisioning == null
          ? null
          : queuedProvisioning!.toMap(),
      'upgradeSettings': ?upgradeSettings == null
          ? null
          : upgradeSettings!.toMap(),
      'version': ?version,
    };
  }

  factory NodePool.fromMap(Map<String, dynamic> map) {
    return NodePool(
      autoscaling: map['autoscaling'] == null
          ? null
          : NodePoolAutoscaling.fromMap(
              (map['autoscaling'] as Map).cast<String, dynamic>(),
            ),
      bestEffortProvisioning: map['bestEffortProvisioning'] == null
          ? null
          : BestEffortProvisioning.fromMap(
              (map['bestEffortProvisioning'] as Map).cast<String, dynamic>(),
            ),
      conditions: map['conditions'] == null
          ? null
          : pulumi.Input.decodeList<StatusCondition>(
              map['conditions'],
              (value) => StatusCondition.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      config: map['config'] == null
          ? null
          : NodeConfig.fromMap((map['config'] as Map).cast<String, dynamic>()),
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
              (map['management'] as Map).cast<String, dynamic>(),
            ),
      maxPodsConstraint: map['maxPodsConstraint'] == null
          ? null
          : MaxPodsConstraint.fromMap(
              (map['maxPodsConstraint'] as Map).cast<String, dynamic>(),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      networkConfig: map['networkConfig'] == null
          ? null
          : NodeNetworkConfig.fromMap(
              (map['networkConfig'] as Map).cast<String, dynamic>(),
            ),
      placementPolicy: map['placementPolicy'] == null
          ? null
          : PlacementPolicy.fromMap(
              (map['placementPolicy'] as Map).cast<String, dynamic>(),
            ),
      queuedProvisioning: map['queuedProvisioning'] == null
          ? null
          : QueuedProvisioning.fromMap(
              (map['queuedProvisioning'] as Map).cast<String, dynamic>(),
            ),
      upgradeSettings: map['upgradeSettings'] == null
          ? null
          : UpgradeSettings.fromMap(
              (map['upgradeSettings'] as Map).cast<String, dynamic>(),
            ),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
