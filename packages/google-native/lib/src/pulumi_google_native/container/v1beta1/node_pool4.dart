import 'package:pulumi/pulumi.dart' hide Config;
import 'best_effort_provisioning_response2.dart';
import 'max_pods_constraint_response2.dart';
import 'node_config_response5.dart';
import 'node_management_response2.dart';
import 'node_network_config_response2.dart';
import 'node_pool_args2.dart';
import 'node_pool_autoscaling_response2.dart';
import 'placement_policy_response3.dart';
import 'queued_provisioning_response2.dart';
import 'status_condition_response2.dart';
import 'update_info_response2.dart';
import 'upgrade_settings_response2.dart';

/// Creates a node pool for a cluster.
class NodePool4 extends CustomResource {
  /// Autoscaler configuration for this NodePool. Autoscaler is enabled only if a valid configuration is present.
  late final Output<NodePoolAutoscalingResponse2> autoscaling;

  /// Enable best effort provisioning for nodes
  late final Output<BestEffortProvisioningResponse2> bestEffortProvisioning;
  late final Output<String> clusterId;

  /// Which conditions caused the current node pool state.
  late final Output<List<StatusConditionResponse2>> conditions;

  /// The node configuration of the pool.
  late final Output<NodeConfigResponse5> config;

  /// This checksum is computed by the server based on the value of node pool fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
  late final Output<String> etag;

  /// The initial node count for the pool. You must ensure that your Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is sufficient for this number of instances. You must also have available firewall and routes quota.
  late final Output<int> initialNodeCount;

  /// [Output only] The resource URLs of the [managed instance groups](https://cloud.google.com/compute/docs/instance-groups/creating-groups-of-managed-instances) associated with this node pool. During the node pool blue-green upgrade operation, the URLs contain both blue and green resources.
  late final Output<List<String>> instanceGroupUrls;
  late final Output<String> location;

  /// The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the NodePool's nodes should be located. If this value is unspecified during node pool creation, the [Cluster.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#Cluster.FIELDS.locations) value will be used, instead. Warning: changing node pool locations will result in nodes being added and/or removed.
  late final Output<List<String>> locations;

  /// NodeManagement configuration for this NodePool.
  late final Output<NodeManagementResponse2> management;

  /// The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  late final Output<MaxPodsConstraintResponse2> maxPodsConstraint;

  /// The name of the node pool.
  late final Output<String> name;

  /// Networking configuration for this NodePool. If specified, it overrides the cluster-level defaults.
  late final Output<NodeNetworkConfigResponse2> networkConfig;

  /// Specifies the node placement policy.
  late final Output<PlacementPolicyResponse3> placementPolicy;

  /// [Output only] The pod CIDR block size per node in this node pool.
  late final Output<int> podIpv4CidrSize;
  late final Output<String> project;

  /// Specifies the configuration of queued provisioning.
  late final Output<QueuedProvisioningResponse2> queuedProvisioning;

  /// [Output only] Server-defined URL for the resource.
  late final Output<String> selfLink;

  /// [Output only] The status of the nodes in this pool instance.
  late final Output<String> status;

  /// [Output only] Deprecated. Use conditions instead. Additional information about the current status of this node pool instance, if available.
  late final Output<String> statusMessage;

  /// [Output only] Update info contains relevant information during a node pool update.
  late final Output<UpdateInfoResponse2> updateInfo;

  /// Upgrade settings control disruption and speed of the upgrade.
  late final Output<UpgradeSettingsResponse2> upgradeSettings;

  /// The version of Kubernetes running on this NodePool's nodes. If unspecified, it defaults as described [here](https://cloud.google.com/kubernetes-engine/versioning#specifying_node_version).
  late final Output<String> version;

  NodePool4(
    String name, {
    NodePoolArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:container/v1beta1:NodePool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoscaling =
        registerOutput<NodePoolAutoscalingResponse2>('autoscaling');
    this.bestEffortProvisioning =
        registerOutput<BestEffortProvisioningResponse2>(
            'bestEffortProvisioning');
    this.clusterId = registerOutput<String>('clusterId');
    this.conditions =
        registerOutput<List<StatusConditionResponse2>>('conditions');
    this.config = registerOutput<NodeConfigResponse5>('config');
    this.etag = registerOutput<String>('etag');
    this.initialNodeCount = registerOutput<int>('initialNodeCount');
    this.instanceGroupUrls = registerOutput<List<String>>('instanceGroupUrls');
    this.location = registerOutput<String>('location');
    this.locations = registerOutput<List<String>>('locations');
    this.management = registerOutput<NodeManagementResponse2>('management');
    this.maxPodsConstraint =
        registerOutput<MaxPodsConstraintResponse2>('maxPodsConstraint');
    this.name = registerOutput<String>('name');
    this.networkConfig =
        registerOutput<NodeNetworkConfigResponse2>('networkConfig');
    this.placementPolicy =
        registerOutput<PlacementPolicyResponse3>('placementPolicy');
    this.podIpv4CidrSize = registerOutput<int>('podIpv4CidrSize');
    this.project = registerOutput<String>('project');
    this.queuedProvisioning =
        registerOutput<QueuedProvisioningResponse2>('queuedProvisioning');
    this.selfLink = registerOutput<String>('selfLink');
    this.status = registerOutput<String>('status');
    this.statusMessage = registerOutput<String>('statusMessage');
    this.updateInfo = registerOutput<UpdateInfoResponse2>('updateInfo');
    this.upgradeSettings =
        registerOutput<UpgradeSettingsResponse2>('upgradeSettings');
    this.version = registerOutput<String>('version');
  }
}
