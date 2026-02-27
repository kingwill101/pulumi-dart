import 'package:pulumi/pulumi.dart' as pulumi;
import '../vmware_admin_cluster_addon_node/vmware_admin_cluster_addon_node.dart';
import '../vmware_admin_cluster_anti_affinity_groups/vmware_admin_cluster_anti_affinity_groups.dart';
import '../vmware_admin_cluster_authorization/vmware_admin_cluster_authorization.dart';
import '../vmware_admin_cluster_auto_repair_config/vmware_admin_cluster_auto_repair_config.dart';
import '../vmware_admin_cluster_control_plane_node/vmware_admin_cluster_control_plane_node.dart';
import '../vmware_admin_cluster_fleet/vmware_admin_cluster_fleet.dart';
import '../vmware_admin_cluster_load_balancer/vmware_admin_cluster_load_balancer.dart';
import '../vmware_admin_cluster_network_config/vmware_admin_cluster_network_config.dart';
import '../vmware_admin_cluster_platform_config/vmware_admin_cluster_platform_config.dart';
import '../vmware_admin_cluster_private_registry_config/vmware_admin_cluster_private_registry_config.dart';
import '../vmware_admin_cluster_proxy/vmware_admin_cluster_proxy.dart';
import '../vmware_admin_cluster_status/vmware_admin_cluster_status.dart';
import '../vmware_admin_cluster_vcenter/vmware_admin_cluster_vcenter.dart';
import 'vmware_admin_cluster_args.dart';

/// A Google VMware Admin Cluster.
///
///
/// To get more information about VmwareAdminCluster, see:
///
/// * [API documentation](https://cloud.google.com/kubernetes-engine/distributed-cloud/reference/on-prem-api/rest/v1/projects.locations.vmwareAdminClusters)
///
/// ## Example Usage
///
/// ### Gkeonprem Vmware Admin Cluster Basic
///
///
///
/// ### Gkeonprem Vmware Admin Cluster Full
///
///
///
/// ### Gkeonprem Vmware Admin Cluster Metallb
///
///
///
///
/// ## Import
///
/// VmwareAdminCluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/vmwareAdminClusters/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, VmwareAdminCluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/vmwareAdminCluster:VmwareAdminCluster default projects/{{project}}/locations/{{location}}/vmwareAdminClusters/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/vmwareAdminCluster:VmwareAdminCluster default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/vmwareAdminCluster:VmwareAdminCluster default {{location}}/{{name}}
/// ```
class VmwareAdminCluster extends pulumi.CustomResource {
  /// The VMware admin cluster addon node configuration.
  /// Structure is documented below.
  late final pulumi.Output<VmwareAdminClusterAddonNode> addonNode;

  /// Annotations on the VMware Admin Cluster.
  /// This field has the same restrictions as Kubernetes annotations.
  /// The total size of all keys and values combined is limited to 256k.
  /// Key can have 2 segments: prefix (optional) and name (required),
  /// separated by a slash (/).
  /// Prefix must be a DNS subdomain.
  /// Name must be 63 characters or less, begin and end with alphanumerics,
  /// with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>> annotations;

  /// AAGConfig specifies whether to spread VMware Admin Cluster nodes across at
  /// least three physical hosts in the datacenter.
  /// Structure is documented below.
  late final pulumi.Output<VmwareAdminClusterAntiAffinityGroups>
      antiAffinityGroups;

  /// The VMware admin cluster authorization configuration.
  /// Structure is documented below.
  late final pulumi.Output<VmwareAdminClusterAuthorization?> authorization;

  /// Configuration for auto repairing.
  /// Structure is documented below.
  late final pulumi.Output<VmwareAdminClusterAutoRepairConfig> autoRepairConfig;

  /// The bootstrap cluster this VMware admin cluster belongs to.
  late final pulumi.Output<String> bootstrapClusterMembership;

  /// The VMware admin cluster control plane node configuration.
  /// Structure is documented below.
  late final pulumi.Output<VmwareAdminClusterControlPlaneNode?>
      controlPlaneNode;

  /// The time the cluster was created, in RFC3339 text format.
  late final pulumi.Output<String> createTime;

  /// A human readable description of this VMware admin cluster.
  late final pulumi.Output<String> description;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// If set, the advanced cluster feature is enabled.
  late final pulumi.Output<bool> enableAdvancedCluster;

  /// The DNS name of VMware admin cluster's API server.
  late final pulumi.Output<String> endpoint;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  /// Allows clients to perform consistent read-modify-writes
  /// through optimistic concurrency control.
  late final pulumi.Output<String> etag;

  /// Fleet configuration for the cluster.
  /// Structure is documented below.
  late final pulumi.Output<List<VmwareAdminClusterFleet>> fleets;

  /// The OS image type for the VMware admin cluster.
  late final pulumi.Output<String> imageType;

  /// Specifies the load balancer configuration for VMware admin cluster.
  /// Structure is documented below.
  late final pulumi.Output<VmwareAdminClusterLoadBalancer?> loadBalancer;

  /// The object name of the VMwareAdminCluster custom resource on the
  /// associated admin cluster. This field is used to support conflicting
  /// names when enrolling existing clusters to the API. When used as a part of
  /// cluster enrollment, this field will differ from the ID in the resource
  /// name. For new clusters, this field will match the user provided cluster ID
  /// and be visible in the last component of the resource name. It is not
  /// modifiable.
  /// All users should use this name to access their cluster using gkectl or
  /// kubectl and should expect to see the local name when viewing admin
  /// cluster controller logs.
  late final pulumi.Output<String> localName;

  /// The location of the resource.
  late final pulumi.Output<String> location;

  /// The VMware admin cluster resource name.
  late final pulumi.Output<String> name;

  /// The VMware admin cluster network configuration.
  /// Structure is documented below.
  late final pulumi.Output<VmwareAdminClusterNetworkConfig> networkConfig;

  /// The Anthos clusters on the VMware version for the admin cluster.
  late final pulumi.Output<String?> onPremVersion;

  /// The VMware platform configuration.
  /// Structure is documented below.
  late final pulumi.Output<VmwareAdminClusterPlatformConfig?> platformConfig;

  /// Configuration for private registry.
  /// Structure is documented below.
  late final pulumi.Output<VmwareAdminClusterPrivateRegistryConfig?>
      privateRegistryConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Configuration for proxy.
  /// Structure is documented below.
  late final pulumi.Output<VmwareAdminClusterProxy?> proxy;

  /// If set, there are currently changes in flight to the VMware admin cluster.
  late final pulumi.Output<bool> reconciling;

  /// (Output)
  /// The lifecycle state of the condition.
  late final pulumi.Output<String> state;

  /// ResourceStatus representing detailed cluster state.
  /// Structure is documented below.
  late final pulumi.Output<List<VmwareAdminClusterStatus>> statuses;

  /// The unique identifier of the VMware Admin Cluster.
  late final pulumi.Output<String> uid;

  /// The time the cluster was last updated, in RFC3339 text format.
  late final pulumi.Output<String> updateTime;

  /// Specifies vCenter config for the admin cluster.
  /// Structure is documented below.
  late final pulumi.Output<VmwareAdminClusterVcenter?> vcenter;

  VmwareAdminCluster(
    String name, {
    VmwareAdminClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkeonprem/vmwareAdminCluster:VmwareAdminCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addonNode = registerOutput<VmwareAdminClusterAddonNode>('addonNode');
    this.annotations = registerOutput<Map<String, String>>('annotations');
    this.antiAffinityGroups =
        registerOutput<VmwareAdminClusterAntiAffinityGroups>(
            'antiAffinityGroups');
    this.authorization =
        registerOutput<VmwareAdminClusterAuthorization?>('authorization');
    this.autoRepairConfig =
        registerOutput<VmwareAdminClusterAutoRepairConfig>('autoRepairConfig');
    this.bootstrapClusterMembership =
        registerOutput<String>('bootstrapClusterMembership');
    this.controlPlaneNode =
        registerOutput<VmwareAdminClusterControlPlaneNode?>('controlPlaneNode');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.enableAdvancedCluster = registerOutput<bool>('enableAdvancedCluster');
    this.endpoint = registerOutput<String>('endpoint');
    this.etag = registerOutput<String>('etag');
    this.fleets = registerOutput<List<VmwareAdminClusterFleet>>('fleets');
    this.imageType = registerOutput<String>('imageType');
    this.loadBalancer =
        registerOutput<VmwareAdminClusterLoadBalancer?>('loadBalancer');
    this.localName = registerOutput<String>('localName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.networkConfig =
        registerOutput<VmwareAdminClusterNetworkConfig>('networkConfig');
    this.onPremVersion = registerOutput<String?>('onPremVersion');
    this.platformConfig =
        registerOutput<VmwareAdminClusterPlatformConfig?>('platformConfig');
    this.privateRegistryConfig =
        registerOutput<VmwareAdminClusterPrivateRegistryConfig?>(
            'privateRegistryConfig');
    this.project = registerOutput<String>('project');
    this.proxy = registerOutput<VmwareAdminClusterProxy?>('proxy');
    this.reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    this.statuses = registerOutput<List<VmwareAdminClusterStatus>>('statuses');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.vcenter = registerOutput<VmwareAdminClusterVcenter?>('vcenter');
  }
}
