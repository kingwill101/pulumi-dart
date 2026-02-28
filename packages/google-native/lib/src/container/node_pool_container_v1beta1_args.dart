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

/// {@template pulumi_container_v1beta1_node_pool_container_v1beta1_args_doc}
/// The set of arguments for NodePool.
/// {@endtemplate}
/// {@macro pulumi_container_v1beta1_node_pool_container_v1beta1_args_doc}
class NodePoolContainerV1beta1Args {
  /// Autoscaler configuration for this NodePool. Autoscaler is enabled only if a valid configuration is present.
  final pulumi.Input<NodePoolAutoscalingContainerV1beta1>? autoscaling;
  /// Enable best effort provisioning for nodes
  final pulumi.Input<BestEffortProvisioningContainerV1beta1>? bestEffortProvisioning;
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

  /// Creates a new [NodePoolContainerV1beta1Args].
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
  NodePoolContainerV1beta1Args({
    NodePoolAutoscalingContainerV1beta1? autoscaling,
    BestEffortProvisioningContainerV1beta1? bestEffortProvisioning,
    required String clusterId,
    List<StatusConditionContainerV1beta1>? conditions,
    NodeConfigContainerV1beta1? config,
    String? etag,
    int? initialNodeCount,
    String? location,
    List<String>? locations,
    NodeManagementContainerV1beta1? management,
    MaxPodsConstraintContainerV1beta1? maxPodsConstraint,
    String? name,
    NodeNetworkConfigContainerV1beta1? networkConfig,
    String? parent,
    PlacementPolicyContainerV1beta1? placementPolicy,
    String? project,
    QueuedProvisioningContainerV1beta1? queuedProvisioning,
    UpgradeSettingsContainerV1beta1? upgradeSettings,
    String? version,
    String? zone,
  }) :
      autoscaling = pulumi.Input.asOptionalInput<NodePoolAutoscalingContainerV1beta1>(autoscaling),
      bestEffortProvisioning = pulumi.Input.asOptionalInput<BestEffortProvisioningContainerV1beta1>(bestEffortProvisioning),
      clusterId = pulumi.Input.asInput<String>(clusterId),
      conditions = pulumi.Input.asOptionalInput<List<StatusConditionContainerV1beta1>>(conditions),
      config = pulumi.Input.asOptionalInput<NodeConfigContainerV1beta1>(config),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      initialNodeCount = pulumi.Input.asOptionalInput<int>(initialNodeCount),
      location = pulumi.Input.asOptionalInput<String>(location),
      locations = pulumi.Input.asOptionalInput<List<String>>(locations),
      management = pulumi.Input.asOptionalInput<NodeManagementContainerV1beta1>(management),
      maxPodsConstraint = pulumi.Input.asOptionalInput<MaxPodsConstraintContainerV1beta1>(maxPodsConstraint),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkConfig = pulumi.Input.asOptionalInput<NodeNetworkConfigContainerV1beta1>(networkConfig),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      placementPolicy = pulumi.Input.asOptionalInput<PlacementPolicyContainerV1beta1>(placementPolicy),
      project = pulumi.Input.asOptionalInput<String>(project),
      queuedProvisioning = pulumi.Input.asOptionalInput<QueuedProvisioningContainerV1beta1>(queuedProvisioning),
      upgradeSettings = pulumi.Input.asOptionalInput<UpgradeSettingsContainerV1beta1>(upgradeSettings),
      version = pulumi.Input.asOptionalInput<String>(version),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscaling': ?pulumi.Input.mapOptionalInputValue<NodePoolAutoscalingContainerV1beta1, Map<String, dynamic>>(autoscaling, (value) => value.toMap()),
      'bestEffortProvisioning': ?pulumi.Input.mapOptionalInputValue<BestEffortProvisioningContainerV1beta1, Map<String, dynamic>>(bestEffortProvisioning, (value) => value.toMap()),
      'clusterId': clusterId,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<StatusConditionContainerV1beta1>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<StatusConditionContainerV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'config': ?pulumi.Input.mapOptionalInputValue<NodeConfigContainerV1beta1, Map<String, dynamic>>(config, (value) => value.toMap()),
      'etag': ?etag,
      'initialNodeCount': ?initialNodeCount,
      'location': ?location,
      'locations': ?locations,
      'management': ?pulumi.Input.mapOptionalInputValue<NodeManagementContainerV1beta1, Map<String, dynamic>>(management, (value) => value.toMap()),
      'maxPodsConstraint': ?pulumi.Input.mapOptionalInputValue<MaxPodsConstraintContainerV1beta1, Map<String, dynamic>>(maxPodsConstraint, (value) => value.toMap()),
      'name': ?name,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<NodeNetworkConfigContainerV1beta1, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'parent': ?parent,
      'placementPolicy': ?pulumi.Input.mapOptionalInputValue<PlacementPolicyContainerV1beta1, Map<String, dynamic>>(placementPolicy, (value) => value.toMap()),
      'project': ?project,
      'queuedProvisioning': ?pulumi.Input.mapOptionalInputValue<QueuedProvisioningContainerV1beta1, Map<String, dynamic>>(queuedProvisioning, (value) => value.toMap()),
      'upgradeSettings': ?pulumi.Input.mapOptionalInputValue<UpgradeSettingsContainerV1beta1, Map<String, dynamic>>(upgradeSettings, (value) => value.toMap()),
      'version': ?version,
      'zone': ?zone,
    };
  }

  factory NodePoolContainerV1beta1Args.fromMap(Map<String, dynamic> map) {
    return NodePoolContainerV1beta1Args(
      autoscaling: map['autoscaling'] == null ? null : NodePoolAutoscalingContainerV1beta1.fromMap((map['autoscaling'] as Map).cast<String, dynamic>()),
      bestEffortProvisioning: map['bestEffortProvisioning'] == null ? null : BestEffortProvisioningContainerV1beta1.fromMap((map['bestEffortProvisioning'] as Map).cast<String, dynamic>()),
      clusterId: map['clusterId'] as String,
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<StatusConditionContainerV1beta1>(map['conditions'], (value) => StatusConditionContainerV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      config: map['config'] == null ? null : NodeConfigContainerV1beta1.fromMap((map['config'] as Map).cast<String, dynamic>()),
      etag: map['etag'] == null ? null : map['etag'] as String,
      initialNodeCount: map['initialNodeCount'] == null ? null : map['initialNodeCount'] as int,
      location: map['location'] == null ? null : map['location'] as String,
      locations: map['locations'] == null ? null : (map['locations'] as List).cast<String>(),
      management: map['management'] == null ? null : NodeManagementContainerV1beta1.fromMap((map['management'] as Map).cast<String, dynamic>()),
      maxPodsConstraint: map['maxPodsConstraint'] == null ? null : MaxPodsConstraintContainerV1beta1.fromMap((map['maxPodsConstraint'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      networkConfig: map['networkConfig'] == null ? null : NodeNetworkConfigContainerV1beta1.fromMap((map['networkConfig'] as Map).cast<String, dynamic>()),
      parent: map['parent'] == null ? null : map['parent'] as String,
      placementPolicy: map['placementPolicy'] == null ? null : PlacementPolicyContainerV1beta1.fromMap((map['placementPolicy'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      queuedProvisioning: map['queuedProvisioning'] == null ? null : QueuedProvisioningContainerV1beta1.fromMap((map['queuedProvisioning'] as Map).cast<String, dynamic>()),
      upgradeSettings: map['upgradeSettings'] == null ? null : UpgradeSettingsContainerV1beta1.fromMap((map['upgradeSettings'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}

