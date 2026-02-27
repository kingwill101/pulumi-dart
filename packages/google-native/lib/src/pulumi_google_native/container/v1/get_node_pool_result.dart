// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'best_effort_provisioning_response.dart';
import 'max_pods_constraint_response.dart';
import 'node_config_response4.dart';
import 'node_management_response.dart';
import 'node_network_config_response.dart';
import 'node_pool_autoscaling_response.dart';
import 'placement_policy_response2.dart';
import 'queued_provisioning_response.dart';
import 'status_condition_response.dart';
import 'update_info_response.dart';
import 'upgrade_settings_response.dart';

/// Result data returned by getNodePool.
class GetNodePoolResult {
  /// Autoscaler configuration for this NodePool. Autoscaler is enabled only if a valid configuration is present.
  final NodePoolAutoscalingResponse autoscaling;

  /// Enable best effort provisioning for nodes
  final BestEffortProvisioningResponse bestEffortProvisioning;

  /// Which conditions caused the current node pool state.
  final List<StatusConditionResponse> conditions;

  /// The node configuration of the pool.
  final NodeConfigResponse4 config;

  /// This checksum is computed by the server based on the value of node pool fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
  final String etag;

  /// The initial node count for the pool. You must ensure that your Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is sufficient for this number of instances. You must also have available firewall and routes quota.
  final int initialNodeCount;

  /// [Output only] The resource URLs of the [managed instance groups](https://cloud.google.com/compute/docs/instance-groups/creating-groups-of-managed-instances) associated with this node pool. During the node pool blue-green upgrade operation, the URLs contain both blue and green resources.
  final List<String> instanceGroupUrls;

  /// The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the NodePool's nodes should be located. If this value is unspecified during node pool creation, the [Cluster.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#Cluster.FIELDS.locations) value will be used, instead. Warning: changing node pool locations will result in nodes being added and/or removed.
  final List<String> locations;

  /// NodeManagement configuration for this NodePool.
  final NodeManagementResponse management;

  /// The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  final MaxPodsConstraintResponse maxPodsConstraint;

  /// The name of the node pool.
  final String name;

  /// Networking configuration for this NodePool. If specified, it overrides the cluster-level defaults.
  final NodeNetworkConfigResponse networkConfig;

  /// Specifies the node placement policy.
  final PlacementPolicyResponse2 placementPolicy;

  /// [Output only] The pod CIDR block size per node in this node pool.
  final int podIpv4CidrSize;

  /// Specifies the configuration of queued provisioning.
  final QueuedProvisioningResponse queuedProvisioning;

  /// [Output only] Server-defined URL for the resource.
  final String selfLink;

  /// [Output only] The status of the nodes in this pool instance.
  final String status;

  /// [Output only] Deprecated. Use conditions instead. Additional information about the current status of this node pool instance, if available.
  final String statusMessage;

  /// [Output only] Update info contains relevant information during a node pool update.
  final UpdateInfoResponse updateInfo;

  /// Upgrade settings control disruption and speed of the upgrade.
  final UpgradeSettingsResponse upgradeSettings;

  /// The version of Kubernetes running on this NodePool's nodes. If unspecified, it defaults as described [here](https://cloud.google.com/kubernetes-engine/versioning#specifying_node_version).
  final String version;

  GetNodePoolResult({
    required this.autoscaling,
    required this.bestEffortProvisioning,
    required this.conditions,
    required this.config,
    required this.etag,
    required this.initialNodeCount,
    required this.instanceGroupUrls,
    required this.locations,
    required this.management,
    required this.maxPodsConstraint,
    required this.name,
    required this.networkConfig,
    required this.placementPolicy,
    required this.podIpv4CidrSize,
    required this.queuedProvisioning,
    required this.selfLink,
    required this.status,
    required this.statusMessage,
    required this.updateInfo,
    required this.upgradeSettings,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscaling'] = autoscaling.toMap();
    map['bestEffortProvisioning'] = bestEffortProvisioning.toMap();
    map['conditions'] =
        Input.encodeList<StatusConditionResponse, Map<String, dynamic>>(
            conditions, (value) => value.toMap());
    map['config'] = config.toMap();
    map['etag'] = etag;
    map['initialNodeCount'] = initialNodeCount;
    map['instanceGroupUrls'] = instanceGroupUrls;
    map['locations'] = locations;
    map['management'] = management.toMap();
    map['maxPodsConstraint'] = maxPodsConstraint.toMap();
    map['name'] = name;
    map['networkConfig'] = networkConfig.toMap();
    map['placementPolicy'] = placementPolicy.toMap();
    map['podIpv4CidrSize'] = podIpv4CidrSize;
    map['queuedProvisioning'] = queuedProvisioning.toMap();
    map['selfLink'] = selfLink;
    map['status'] = status;
    map['statusMessage'] = statusMessage;
    map['updateInfo'] = updateInfo.toMap();
    map['upgradeSettings'] = upgradeSettings.toMap();
    map['version'] = version;
    return map;
  }

  factory GetNodePoolResult.fromMap(Map<String, dynamic> map) {
    return GetNodePoolResult(
      autoscaling: NodePoolAutoscalingResponse.fromMap(
          (map['autoscaling'] as Map).cast<String, dynamic>()),
      bestEffortProvisioning: BestEffortProvisioningResponse.fromMap(
          (map['bestEffortProvisioning'] as Map).cast<String, dynamic>()),
      conditions: Input.decodeList<StatusConditionResponse>(
          map['conditions'],
          (value) => StatusConditionResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      config: NodeConfigResponse4.fromMap(
          (map['config'] as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      initialNodeCount: map['initialNodeCount'] as int,
      instanceGroupUrls: (map['instanceGroupUrls'] as List).cast<String>(),
      locations: (map['locations'] as List).cast<String>(),
      management: NodeManagementResponse.fromMap(
          (map['management'] as Map).cast<String, dynamic>()),
      maxPodsConstraint: MaxPodsConstraintResponse.fromMap(
          (map['maxPodsConstraint'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      networkConfig: NodeNetworkConfigResponse.fromMap(
          (map['networkConfig'] as Map).cast<String, dynamic>()),
      placementPolicy: PlacementPolicyResponse2.fromMap(
          (map['placementPolicy'] as Map).cast<String, dynamic>()),
      podIpv4CidrSize: map['podIpv4CidrSize'] as int,
      queuedProvisioning: QueuedProvisioningResponse.fromMap(
          (map['queuedProvisioning'] as Map).cast<String, dynamic>()),
      selfLink: map['selfLink'] as String,
      status: map['status'] as String,
      statusMessage: map['statusMessage'] as String,
      updateInfo: UpdateInfoResponse.fromMap(
          (map['updateInfo'] as Map).cast<String, dynamic>()),
      upgradeSettings: UpgradeSettingsResponse.fromMap(
          (map['upgradeSettings'] as Map).cast<String, dynamic>()),
      version: map['version'] as String,
    );
  }
}
