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

/// {@template pulumi_container_v1_node_pool_args_doc}
/// The set of arguments for NodePool.
/// {@endtemplate}
/// {@macro pulumi_container_v1_node_pool_args_doc}
class NodePoolArgs {
  /// Autoscaler configuration for this NodePool. Autoscaler is enabled only if a valid configuration is present.
  final pulumi.Input<NodePoolAutoscaling>? autoscaling;

  /// Enable best effort provisioning for nodes
  final pulumi.Input<BestEffortProvisioning>? bestEffortProvisioning;

  /// Deprecated. The name of the cluster. This field has been deprecated and replaced by the parent field.
  final pulumi.Input<String> clusterId;

  /// Which conditions caused the current node pool state.
  final pulumi.Input<List<StatusCondition>>? conditions;

  /// The node configuration of the pool.
  final pulumi.Input<NodeConfig>? config;

  /// This checksum is computed by the server based on the value of node pool fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;

  /// The initial node count for the pool. You must ensure that your Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is sufficient for this number of instances. You must also have available firewall and routes quota.
  final pulumi.Input<int>? initialNodeCount;
  final pulumi.Input<String>? location;

  /// The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the NodePool's nodes should be located. If this value is unspecified during node pool creation, the [Cluster.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#Cluster.FIELDS.locations) value will be used, instead. Warning: changing node pool locations will result in nodes being added and/or removed.
  final pulumi.Input<List<String>>? locations;

  /// NodeManagement configuration for this NodePool.
  final pulumi.Input<NodeManagement>? management;

  /// The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  final pulumi.Input<MaxPodsConstraint>? maxPodsConstraint;

  /// The name of the node pool.
  final pulumi.Input<String>? name;

  /// Networking configuration for this NodePool. If specified, it overrides the cluster-level defaults.
  final pulumi.Input<NodeNetworkConfig>? networkConfig;

  /// The parent (project, location, cluster name) where the node pool will be created. Specified in the format `projects/*/locations/*/clusters/*`.
  final pulumi.Input<String>? parent;

  /// Specifies the node placement policy.
  final pulumi.Input<PlacementPolicy>? placementPolicy;

  /// Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the parent field.
  final pulumi.Input<String>? project;

  /// Specifies the configuration of queued provisioning.
  final pulumi.Input<QueuedProvisioning>? queuedProvisioning;

  /// Upgrade settings control disruption and speed of the upgrade.
  final pulumi.Input<UpgradeSettings>? upgradeSettings;

  /// The version of Kubernetes running on this NodePool's nodes. If unspecified, it defaults as described [here](https://cloud.google.com/kubernetes-engine/versioning#specifying_node_version).
  final pulumi.Input<String>? version;

  /// Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the parent field.
  final pulumi.Input<String>? zone;

  /// Creates a new [NodePoolArgs].
  /// [autoscaling] Autoscaler configuration for this NodePool. Autoscaler is enabled only if a valid configuration is present.
  /// [bestEffortProvisioning] Enable best effort provisioning for nodes
  /// [clusterId] Deprecated. The name of the cluster. This field has been deprecated and replaced by the parent field.
  /// [conditions] Which conditions caused the current node pool state.
  /// [config] The node configuration of the pool.
  /// [etag] This checksum is computed by the server based on the value of node pool fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
  /// [initialNodeCount] The initial node count for the pool. You must ensure that your Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is sufficient for this number of instances. You must also have available firewall and routes quota.
  /// [location] Optional.
  /// [locations] The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the NodePool's nodes should be located. If this value is unspecified during node pool creation, the [Cluster.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#Cluster.FIELDS.locations) value will be used, instead. Warning: changing node pool locations will result in nodes being added and/or removed.
  /// [management] NodeManagement configuration for this NodePool.
  /// [maxPodsConstraint] The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  /// [name] The name of the node pool.
  /// [networkConfig] Networking configuration for this NodePool. If specified, it overrides the cluster-level defaults.
  /// [parent] The parent (project, location, cluster name) where the node pool will be created. Specified in the format `projects/*/locations/*/clusters/*`.
  /// [placementPolicy] Specifies the node placement policy.
  /// [project] Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the parent field.
  /// [queuedProvisioning] Specifies the configuration of queued provisioning.
  /// [upgradeSettings] Upgrade settings control disruption and speed of the upgrade.
  /// [version] The version of Kubernetes running on this NodePool's nodes. If unspecified, it defaults as described [here](https://cloud.google.com/kubernetes-engine/versioning#specifying_node_version).
  /// [zone] Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the parent field.
  NodePoolArgs({
    NodePoolAutoscaling? autoscaling,
    BestEffortProvisioning? bestEffortProvisioning,
    required String clusterId,
    List<StatusCondition>? conditions,
    NodeConfig? config,
    String? etag,
    int? initialNodeCount,
    String? location,
    List<String>? locations,
    NodeManagement? management,
    MaxPodsConstraint? maxPodsConstraint,
    String? name,
    NodeNetworkConfig? networkConfig,
    String? parent,
    PlacementPolicy? placementPolicy,
    String? project,
    QueuedProvisioning? queuedProvisioning,
    UpgradeSettings? upgradeSettings,
    String? version,
    String? zone,
  })  : autoscaling =
            pulumi.Input.asOptionalInput<NodePoolAutoscaling>(autoscaling),
        bestEffortProvisioning =
            pulumi.Input.asOptionalInput<BestEffortProvisioning>(
                bestEffortProvisioning),
        clusterId = pulumi.Input.asInput<String>(clusterId),
        conditions =
            pulumi.Input.asOptionalInput<List<StatusCondition>>(conditions),
        config = pulumi.Input.asOptionalInput<NodeConfig>(config),
        etag = pulumi.Input.asOptionalInput<String>(etag),
        initialNodeCount = pulumi.Input.asOptionalInput<int>(initialNodeCount),
        location = pulumi.Input.asOptionalInput<String>(location),
        locations = pulumi.Input.asOptionalInput<List<String>>(locations),
        management = pulumi.Input.asOptionalInput<NodeManagement>(management),
        maxPodsConstraint =
            pulumi.Input.asOptionalInput<MaxPodsConstraint>(maxPodsConstraint),
        name = pulumi.Input.asOptionalInput<String>(name),
        networkConfig =
            pulumi.Input.asOptionalInput<NodeNetworkConfig>(networkConfig),
        parent = pulumi.Input.asOptionalInput<String>(parent),
        placementPolicy =
            pulumi.Input.asOptionalInput<PlacementPolicy>(placementPolicy),
        project = pulumi.Input.asOptionalInput<String>(project),
        queuedProvisioning = pulumi.Input.asOptionalInput<QueuedProvisioning>(
            queuedProvisioning),
        upgradeSettings =
            pulumi.Input.asOptionalInput<UpgradeSettings>(upgradeSettings),
        version = pulumi.Input.asOptionalInput<String>(version),
        zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoscalingValue = autoscaling;
    if (autoscalingValue != null) {
      map['autoscaling'] = pulumi.Input.mapOptionalInputValue<
          NodePoolAutoscaling,
          Map<String, dynamic>>(autoscalingValue, (value) => value.toMap());
    }
    final bestEffortProvisioningValue = bestEffortProvisioning;
    if (bestEffortProvisioningValue != null) {
      map['bestEffortProvisioning'] = pulumi.Input.mapOptionalInputValue<
              BestEffortProvisioning, Map<String, dynamic>>(
          bestEffortProvisioningValue, (value) => value.toMap());
    }
    map['clusterId'] = clusterId;
    final conditionsValue = conditions;
    if (conditionsValue != null) {
      map['conditions'] = pulumi.Input.mapOptionalInputValue<
              List<StatusCondition>, List<Map<String, dynamic>>>(
          conditionsValue,
          (value) =>
              pulumi.Input.encodeList<StatusCondition, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final configValue = config;
    if (configValue != null) {
      map['config'] =
          pulumi.Input.mapOptionalInputValue<NodeConfig, Map<String, dynamic>>(
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
      map['management'] = pulumi.Input.mapOptionalInputValue<NodeManagement,
          Map<String, dynamic>>(managementValue, (value) => value.toMap());
    }
    final maxPodsConstraintValue = maxPodsConstraint;
    if (maxPodsConstraintValue != null) {
      map['maxPodsConstraint'] = pulumi.Input.mapOptionalInputValue<
              MaxPodsConstraint, Map<String, dynamic>>(
          maxPodsConstraintValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] = pulumi.Input.mapOptionalInputValue<
          NodeNetworkConfig,
          Map<String, dynamic>>(networkConfigValue, (value) => value.toMap());
    }
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    final placementPolicyValue = placementPolicy;
    if (placementPolicyValue != null) {
      map['placementPolicy'] = pulumi.Input.mapOptionalInputValue<
          PlacementPolicy,
          Map<String, dynamic>>(placementPolicyValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final queuedProvisioningValue = queuedProvisioning;
    if (queuedProvisioningValue != null) {
      map['queuedProvisioning'] = pulumi.Input.mapOptionalInputValue<
              QueuedProvisioning, Map<String, dynamic>>(
          queuedProvisioningValue, (value) => value.toMap());
    }
    final upgradeSettingsValue = upgradeSettings;
    if (upgradeSettingsValue != null) {
      map['upgradeSettings'] = pulumi.Input.mapOptionalInputValue<
          UpgradeSettings,
          Map<String, dynamic>>(upgradeSettingsValue, (value) => value.toMap());
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

  factory NodePoolArgs.fromMap(Map<String, dynamic> map) {
    return NodePoolArgs(
      autoscaling: map['autoscaling'] == null
          ? null
          : NodePoolAutoscaling.fromMap(
              (map['autoscaling'] as Map).cast<String, dynamic>()),
      bestEffortProvisioning: map['bestEffortProvisioning'] == null
          ? null
          : BestEffortProvisioning.fromMap(
              (map['bestEffortProvisioning'] as Map).cast<String, dynamic>()),
      clusterId: map['clusterId'] as String,
      conditions: map['conditions'] == null
          ? null
          : pulumi.Input.decodeList<StatusCondition>(
              map['conditions'],
              (value) => StatusCondition.fromMap(
                  (value as Map).cast<String, dynamic>())),
      config: map['config'] == null
          ? null
          : NodeConfig.fromMap((map['config'] as Map).cast<String, dynamic>()),
      etag: map['etag'] == null ? null : map['etag'] as String,
      initialNodeCount: map['initialNodeCount'] == null
          ? null
          : map['initialNodeCount'] as int,
      location: map['location'] == null ? null : map['location'] as String,
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
      parent: map['parent'] == null ? null : map['parent'] as String,
      placementPolicy: map['placementPolicy'] == null
          ? null
          : PlacementPolicy.fromMap(
              (map['placementPolicy'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      queuedProvisioning: map['queuedProvisioning'] == null
          ? null
          : QueuedProvisioning.fromMap(
              (map['queuedProvisioning'] as Map).cast<String, dynamic>()),
      upgradeSettings: map['upgradeSettings'] == null
          ? null
          : UpgradeSettings.fromMap(
              (map['upgradeSettings'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
