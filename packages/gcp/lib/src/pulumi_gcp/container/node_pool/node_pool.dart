import 'package:pulumi/pulumi.dart' as pulumi;
import '../node_pool_autoscaling/node_pool_autoscaling.dart';
import '../node_pool_management/node_pool_management.dart';
import '../node_pool_network_config/node_pool_network_config.dart';
import '../node_pool_node_config/node_pool_node_config.dart';
import '../node_pool_node_drain_config/node_pool_node_drain_config.dart';
import '../node_pool_placement_policy/node_pool_placement_policy.dart';
import '../node_pool_queued_provisioning/node_pool_queued_provisioning.dart';
import '../node_pool_upgrade_settings/node_pool_upgrade_settings.dart';
import 'node_pool_args.dart';

/// Manages a node pool in a Google Kubernetes Engine (GKE) cluster separately from
/// the cluster control plane. For more information see [the official documentation](https://cloud.google.com/container-engine/docs/node-pools)
/// and [the API reference](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters.nodePools).
///
/// ## Example Usage
///
/// ### Using A Separately Managed Node Pool (Recommended)
///
///
///
/// ### 2 Node Pools, 1 Separately Managed + The Default Node Pool
///
///
///
/// ## Import
///
/// Node pools can be imported using the `project`, `location`, `cluster` and `name`. If
///
/// the project is omitted, the project value in the provider configuration will be used. Examples:
///
/// * `{{project_id}}/{{location}}/{{cluster_id}}/{{pool_id}}`
///
/// * `{{location}}/{{cluster_id}}/{{pool_id}}`
///
/// When using the `pulumi import` command, node pools can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:container/nodePool:NodePool default {{project_id}}/{{location}}/{{cluster_id}}/{{pool_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:container/nodePool:NodePool default {{location}}/{{cluster_id}}/{{pool_id}}
/// ```
class NodePool extends pulumi.CustomResource {
  /// Configuration required by cluster autoscaler to adjust
  /// the size of the node pool to the current cluster usage. Structure is documented below.
  late final pulumi.Output<NodePoolAutoscaling?> autoscaling;

  /// The cluster to create the node pool for. Cluster must be present in `location` provided for clusters. May be specified in the format `projects/{{project}}/locations/{{location}}/clusters/{{cluster}}` or as just the name of the cluster.
  ///
  /// - - -
  late final pulumi.Output<String> cluster;

  /// The initial number of nodes for the pool. In
  /// regional or multi-zonal clusters, this is the number of nodes per zone. Changing
  /// this will force recreation of the resource. WARNING: Resizing your node pool manually
  /// may change this value in your existing cluster, which will trigger destruction
  /// and recreation on the next provider run (to rectify the discrepancy).  If you don't
  /// need this value, don't set it.  If you do need it, you can use a lifecycle block to
  /// ignore subsqeuent changes to this field.
  late final pulumi.Output<int> initialNodeCount;

  /// The resource URLs of the managed instance groups associated with this node pool.
  late final pulumi.Output<List<String>> instanceGroupUrls;

  /// The location (region or zone) of the cluster.
  ///
  /// - - -
  late final pulumi.Output<String> location;

  /// List of instance group URLs which have been assigned to this node pool.
  late final pulumi.Output<List<String>> managedInstanceGroupUrls;

  /// Node management configuration, wherein auto-repair and
  /// auto-upgrade is configured. Structure is documented below.
  late final pulumi.Output<NodePoolManagement> management;

  /// The maximum number of pods per node in this node pool.
  /// Note that this does not work on node pools which are "route-based" - that is, node
  /// pools belonging to clusters that do not have IP Aliasing enabled.
  /// See the [official documentation](https://cloud.google.com/kubernetes-engine/docs/how-to/flexible-pod-cidr)
  /// for more information.
  late final pulumi.Output<int> maxPodsPerNode;

  /// The name of the node pool. If left blank, the provider will
  /// auto-generate a unique name.
  late final pulumi.Output<String> name;

  /// Creates a unique name for the node pool beginning
  /// with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// The network configuration of the pool. Such as
  /// configuration for [Adding Pod IP address ranges](https://cloud.google.com/kubernetes-engine/docs/how-to/multi-pod-cidr)) to the node pool. Or enabling private nodes. Structure is
  /// documented below
  late final pulumi.Output<NodePoolNetworkConfig> networkConfig;

  /// Parameters used in creating the node pool. See
  /// gcp.container.Cluster for schema.
  late final pulumi.Output<NodePoolNodeConfig> nodeConfig;

  /// The number of nodes per instance group. This field can be used to
  /// update the number of nodes per instance group but should not be used alongside `autoscaling`.
  late final pulumi.Output<int> nodeCount;

  /// The node drain configuration of the pool. Structure is documented below.
  late final pulumi.Output<List<NodePoolNodeDrainConfig>> nodeDrainConfigs;

  /// The list of zones in which the node pool's nodes should be located. Nodes must
  /// be in the region of their regional cluster or in the same region as their
  /// cluster's zone for zonal clusters. If unspecified, the cluster-level
  /// `node_locations` will be used.
  ///
  /// > Note: `node_locations` will not revert to the cluster's default set of zones
  /// upon being unset. You must manually reconcile the list of zones with your
  /// cluster.
  late final pulumi.Output<List<String>> nodeLocations;
  late final pulumi.Output<String> operation;

  /// Specifies a custom placement policy for the
  /// nodes.
  late final pulumi.Output<NodePoolPlacementPolicy?> placementPolicy;

  /// The ID of the project in which to create the node pool. If blank,
  /// the provider-configured project will be used.
  late final pulumi.Output<String> project;

  /// Specifies node pool-level settings of queued provisioning.
  /// Structure is documented below.
  ///
  /// <a name="nested_autoscaling"></a>The `autoscaling` block supports (either total or per zone limits are required):
  late final pulumi.Output<NodePoolQueuedProvisioning?> queuedProvisioning;

  /// Specify node upgrade settings to change how GKE upgrades nodes.
  /// The maximum number of nodes upgraded simultaneously is limited to 20. Structure is documented below.
  late final pulumi.Output<NodePoolUpgradeSettings> upgradeSettings;

  /// The Kubernetes version for the nodes in this pool. Note that if this field
  /// and `auto_upgrade` are both specified, they will fight each other for what the node version should
  /// be, so setting both is highly discouraged. While a fuzzy version can be specified, it's
  /// recommended that you specify explicit versions as the provider will see spurious diffs
  /// when fuzzy versions are used. See the `gcp.container.getEngineVersions` data source's
  /// `version_prefix` field to approximate fuzzy versions in a provider-compatible way.
  late final pulumi.Output<String> version;

  NodePool(
    String name, {
    NodePoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:container/nodePool:NodePool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoscaling = registerOutput<NodePoolAutoscaling?>('autoscaling');
    this.cluster = registerOutput<String>('cluster');
    this.initialNodeCount = registerOutput<int>('initialNodeCount');
    this.instanceGroupUrls = registerOutput<List<String>>('instanceGroupUrls');
    this.location = registerOutput<String>('location');
    this.managedInstanceGroupUrls =
        registerOutput<List<String>>('managedInstanceGroupUrls');
    this.management = registerOutput<NodePoolManagement>('management');
    this.maxPodsPerNode = registerOutput<int>('maxPodsPerNode');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.networkConfig = registerOutput<NodePoolNetworkConfig>('networkConfig');
    this.nodeConfig = registerOutput<NodePoolNodeConfig>('nodeConfig');
    this.nodeCount = registerOutput<int>('nodeCount');
    this.nodeDrainConfigs =
        registerOutput<List<NodePoolNodeDrainConfig>>('nodeDrainConfigs');
    this.nodeLocations = registerOutput<List<String>>('nodeLocations');
    this.operation = registerOutput<String>('operation');
    this.placementPolicy =
        registerOutput<NodePoolPlacementPolicy?>('placementPolicy');
    this.project = registerOutput<String>('project');
    this.queuedProvisioning =
        registerOutput<NodePoolQueuedProvisioning?>('queuedProvisioning');
    this.upgradeSettings =
        registerOutput<NodePoolUpgradeSettings>('upgradeSettings');
    this.version = registerOutput<String>('version');
  }
}
