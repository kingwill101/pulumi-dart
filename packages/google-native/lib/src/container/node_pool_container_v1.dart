import 'package:pulumi/pulumi.dart' as pulumi;
import 'best_effort_provisioning_response.dart';
import 'max_pods_constraint_response.dart';
import 'node_config_response.dart';
import 'node_management_response.dart';
import 'node_network_config_response.dart';
import 'node_pool_args.dart';
import 'node_pool_autoscaling_response.dart';
import 'placement_policy_response.dart';
import 'queued_provisioning_response.dart';
import 'status_condition_response.dart';
import 'update_info_response.dart';
import 'upgrade_settings_response.dart';

/// Creates a node pool for a cluster.
class NodePoolContainerV1 extends pulumi.CustomResource {
  /// Autoscaler configuration for this NodePool. Autoscaler is enabled only if a valid configuration is present.
  late final pulumi.Output<NodePoolAutoscalingResponse> autoscaling;

  /// Enable best effort provisioning for nodes
  late final pulumi.Output<BestEffortProvisioningResponse>
  bestEffortProvisioning;
  late final pulumi.Output<String> clusterId;

  /// Which conditions caused the current node pool state.
  late final pulumi.Output<List<StatusConditionResponse>> conditions;

  /// The node configuration of the pool.
  late final pulumi.Output<NodeConfigResponse> config;

  /// This checksum is computed by the server based on the value of node pool fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// The initial node count for the pool. You must ensure that your Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is sufficient for this number of instances. You must also have available firewall and routes quota.
  late final pulumi.Output<int> initialNodeCount;

  /// [Output only] The resource URLs of the [managed instance groups](https://cloud.google.com/compute/docs/instance-groups/creating-groups-of-managed-instances) associated with this node pool. During the node pool blue-green upgrade operation, the URLs contain both blue and green resources.
  late final pulumi.Output<List<String>> instanceGroupUrls;
  late final pulumi.Output<String> location;

  /// The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the NodePool's nodes should be located. If this value is unspecified during node pool creation, the [Cluster.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#Cluster.FIELDS.locations) value will be used, instead. Warning: changing node pool locations will result in nodes being added and/or removed.
  late final pulumi.Output<List<String>> locations;

  /// NodeManagement configuration for this NodePool.
  late final pulumi.Output<NodeManagementResponse> management;

  /// The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  late final pulumi.Output<MaxPodsConstraintResponse> maxPodsConstraint;

  /// The name of the node pool.
  late final pulumi.Output<String> name;

  /// Networking configuration for this NodePool. If specified, it overrides the cluster-level defaults.
  late final pulumi.Output<NodeNetworkConfigResponse> networkConfig;

  /// Specifies the node placement policy.
  late final pulumi.Output<PlacementPolicyResponse> placementPolicy;

  /// [Output only] The pod CIDR block size per node in this node pool.
  late final pulumi.Output<int> podIpv4CidrSize;
  late final pulumi.Output<String> project;

  /// Specifies the configuration of queued provisioning.
  late final pulumi.Output<QueuedProvisioningResponse> queuedProvisioning;

  /// [Output only] Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;

  /// [Output only] The status of the nodes in this pool instance.
  late final pulumi.Output<String> status;

  /// [Output only] Deprecated. Use conditions instead. Additional information about the current status of this node pool instance, if available.
  late final pulumi.Output<String> statusMessage;

  /// [Output only] Update info contains relevant information during a node pool update.
  late final pulumi.Output<UpdateInfoResponse> updateInfo;

  /// Upgrade settings control disruption and speed of the upgrade.
  late final pulumi.Output<UpgradeSettingsResponse> upgradeSettings;

  /// The version of Kubernetes running on this NodePool's nodes. If unspecified, it defaults as described [here](https://cloud.google.com/kubernetes-engine/versioning#specifying_node_version).
  late final pulumi.Output<String> version;

  /// Creates a new [NodePoolContainerV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NodePoolContainerV1]. {@macro pulumi_container_v1_node_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NodePoolContainerV1(
    String name, {
    NodePoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:container/v1:NodePool',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.autoscaling = registerOutput<NodePoolAutoscalingResponse>(
      'autoscaling',
    );
    this.bestEffortProvisioning =
        registerOutput<BestEffortProvisioningResponse>(
          'bestEffortProvisioning',
        );
    this.clusterId = registerOutput<String>('clusterId');
    this.conditions = registerOutput<List<StatusConditionResponse>>(
      'conditions',
    );
    this.config = registerOutput<NodeConfigResponse>('config');
    this.etag = registerOutput<String>('etag');
    this.initialNodeCount = registerOutput<int>('initialNodeCount');
    this.instanceGroupUrls = registerOutput<List<String>>('instanceGroupUrls');
    this.location = registerOutput<String>('location');
    this.locations = registerOutput<List<String>>('locations');
    this.management = registerOutput<NodeManagementResponse>('management');
    this.maxPodsConstraint = registerOutput<MaxPodsConstraintResponse>(
      'maxPodsConstraint',
    );
    this.name = registerOutput<String>('name');
    this.networkConfig = registerOutput<NodeNetworkConfigResponse>(
      'networkConfig',
    );
    this.placementPolicy = registerOutput<PlacementPolicyResponse>(
      'placementPolicy',
    );
    this.podIpv4CidrSize = registerOutput<int>('podIpv4CidrSize');
    this.project = registerOutput<String>('project');
    this.queuedProvisioning = registerOutput<QueuedProvisioningResponse>(
      'queuedProvisioning',
    );
    this.selfLink = registerOutput<String>('selfLink');
    this.status = registerOutput<String>('status');
    this.statusMessage = registerOutput<String>('statusMessage');
    this.updateInfo = registerOutput<UpdateInfoResponse>('updateInfo');
    this.upgradeSettings = registerOutput<UpgradeSettingsResponse>(
      'upgradeSettings',
    );
    this.version = registerOutput<String>('version');
  }
}
