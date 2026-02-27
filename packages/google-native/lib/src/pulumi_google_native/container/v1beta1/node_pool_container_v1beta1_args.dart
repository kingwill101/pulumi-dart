// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'best_effort_provisioning_container_v1beta1.dart';
import 'max_pods_constraint_container_v1beta1.dart';
import 'node_config_container_v1beta1.dart';
import 'node_management_container_v1beta1.dart';
import 'node_network_config_container_v1beta1.dart';
import 'node_pool_autoscaling_container_v1beta1.dart';
import 'placement_policy_container_v1beta1.dart';
import 'queued_provisioning_container_v1beta1.dart';
import 'status_condition_container_v1beta1.dart';
import 'upgrade_settings_container_v1beta1.dart';

/// The set of arguments for NodePool.
class NodePoolContainerV1beta1Args {
  /// Autoscaler configuration for this NodePool. Autoscaler is enabled only if a valid configuration is present.
  final pulumi.Input<NodePoolAutoscalingContainerV1beta1>? autoscaling;

  /// Enable best effort provisioning for nodes
  final pulumi.Input<BestEffortProvisioningContainerV1beta1>?
      bestEffortProvisioning;

  /// Deprecated. The name of the cluster. This field has been deprecated and replaced by the parent field.
  final pulumi.Input<String> clusterId;

  /// Which conditions caused the current node pool state.
  final pulumi.Input<List<StatusConditionContainerV1beta1>>? conditions;

  /// The node configuration of the pool.
  final pulumi.Input<NodeConfigContainerV1beta1>? config;

  /// This checksum is computed by the server based on the value of node pool fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;

  /// The initial node count for the pool. You must ensure that your Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is sufficient for this number of instances. You must also have available firewall and routes quota.
  final pulumi.Input<int>? initialNodeCount;
  final pulumi.Input<String>? location;

  /// The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the NodePool's nodes should be located. If this value is unspecified during node pool creation, the [Cluster.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#Cluster.FIELDS.locations) value will be used, instead. Warning: changing node pool locations will result in nodes being added and/or removed.
  final pulumi.Input<List<String>>? locations;

  /// NodeManagement configuration for this NodePool.
  final pulumi.Input<NodeManagementContainerV1beta1>? management;

  /// The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  final pulumi.Input<MaxPodsConstraintContainerV1beta1>? maxPodsConstraint;

  /// The name of the node pool.
  final pulumi.Input<String>? name;

  /// Networking configuration for this NodePool. If specified, it overrides the cluster-level defaults.
  final pulumi.Input<NodeNetworkConfigContainerV1beta1>? networkConfig;

  /// The parent (project, location, cluster name) where the node pool will be created. Specified in the format `projects/*/locations/*/clusters/*`.
  final pulumi.Input<String>? parent;

  /// Specifies the node placement policy.
  final pulumi.Input<PlacementPolicyContainerV1beta1>? placementPolicy;

  /// Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the parent field.
  final pulumi.Input<String>? project;

  /// Specifies the configuration of queued provisioning.
  final pulumi.Input<QueuedProvisioningContainerV1beta1>? queuedProvisioning;

  /// Upgrade settings control disruption and speed of the upgrade.
  final pulumi.Input<UpgradeSettingsContainerV1beta1>? upgradeSettings;

  /// The version of Kubernetes running on this NodePool's nodes. If unspecified, it defaults as described [here](https://cloud.google.com/kubernetes-engine/versioning#specifying_node_version).
  final pulumi.Input<String>? version;

  /// Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the parent field.
  final pulumi.Input<String>? zone;

  NodePoolContainerV1beta1Args({
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
      map['autoscaling'] = pulumi.Input.mapOptionalInputValue<
          NodePoolAutoscalingContainerV1beta1,
          Map<String, dynamic>>(autoscalingValue, (value) => value.toMap());
    }
    final bestEffortProvisioningValue = bestEffortProvisioning;
    if (bestEffortProvisioningValue != null) {
      map['bestEffortProvisioning'] = pulumi.Input.mapOptionalInputValue<
              BestEffortProvisioningContainerV1beta1, Map<String, dynamic>>(
          bestEffortProvisioningValue, (value) => value.toMap());
    }
    map['clusterId'] = clusterId;
    final conditionsValue = conditions;
    if (conditionsValue != null) {
      map['conditions'] = pulumi.Input.mapOptionalInputValue<
              List<StatusConditionContainerV1beta1>,
              List<Map<String, dynamic>>>(
          conditionsValue,
          (value) => pulumi.Input.encodeList<StatusConditionContainerV1beta1,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final configValue = config;
    if (configValue != null) {
      map['config'] = pulumi.Input.mapOptionalInputValue<
          NodeConfigContainerV1beta1,
          Map<String, dynamic>>(configValue, (value) => value.toMap());
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
      map['management'] = pulumi.Input.mapOptionalInputValue<
          NodeManagementContainerV1beta1,
          Map<String, dynamic>>(managementValue, (value) => value.toMap());
    }
    final maxPodsConstraintValue = maxPodsConstraint;
    if (maxPodsConstraintValue != null) {
      map['maxPodsConstraint'] = pulumi.Input.mapOptionalInputValue<
              MaxPodsConstraintContainerV1beta1, Map<String, dynamic>>(
          maxPodsConstraintValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] = pulumi.Input.mapOptionalInputValue<
          NodeNetworkConfigContainerV1beta1,
          Map<String, dynamic>>(networkConfigValue, (value) => value.toMap());
    }
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    final placementPolicyValue = placementPolicy;
    if (placementPolicyValue != null) {
      map['placementPolicy'] = pulumi.Input.mapOptionalInputValue<
          PlacementPolicyContainerV1beta1,
          Map<String, dynamic>>(placementPolicyValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final queuedProvisioningValue = queuedProvisioning;
    if (queuedProvisioningValue != null) {
      map['queuedProvisioning'] = pulumi.Input.mapOptionalInputValue<
              QueuedProvisioningContainerV1beta1, Map<String, dynamic>>(
          queuedProvisioningValue, (value) => value.toMap());
    }
    final upgradeSettingsValue = upgradeSettings;
    if (upgradeSettingsValue != null) {
      map['upgradeSettings'] = pulumi.Input.mapOptionalInputValue<
          UpgradeSettingsContainerV1beta1,
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

  factory NodePoolContainerV1beta1Args.fromMap(Map<String, dynamic> map) {
    return NodePoolContainerV1beta1Args(
      autoscaling:
          pulumi.Input.asOptionalInput<NodePoolAutoscalingContainerV1beta1>(
              map['autoscaling']),
      bestEffortProvisioning:
          pulumi.Input.asOptionalInput<BestEffortProvisioningContainerV1beta1>(
              map['bestEffortProvisioning']),
      clusterId: pulumi.Input.asInput<String>(map['clusterId']),
      conditions:
          pulumi.Input.asOptionalInput<List<StatusConditionContainerV1beta1>>(
              map['conditions']),
      config: pulumi.Input.asOptionalInput<NodeConfigContainerV1beta1>(
          map['config']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      initialNodeCount:
          pulumi.Input.asOptionalInput<int>(map['initialNodeCount']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      locations: pulumi.Input.asOptionalInput<List<String>>(map['locations']),
      management: pulumi.Input.asOptionalInput<NodeManagementContainerV1beta1>(
          map['management']),
      maxPodsConstraint:
          pulumi.Input.asOptionalInput<MaxPodsConstraintContainerV1beta1>(
              map['maxPodsConstraint']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      networkConfig:
          pulumi.Input.asOptionalInput<NodeNetworkConfigContainerV1beta1>(
              map['networkConfig']),
      parent: pulumi.Input.asOptionalInput<String>(map['parent']),
      placementPolicy:
          pulumi.Input.asOptionalInput<PlacementPolicyContainerV1beta1>(
              map['placementPolicy']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      queuedProvisioning:
          pulumi.Input.asOptionalInput<QueuedProvisioningContainerV1beta1>(
              map['queuedProvisioning']),
      upgradeSettings:
          pulumi.Input.asOptionalInput<UpgradeSettingsContainerV1beta1>(
              map['upgradeSettings']),
      version: pulumi.Input.asOptionalInput<String>(map['version']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
