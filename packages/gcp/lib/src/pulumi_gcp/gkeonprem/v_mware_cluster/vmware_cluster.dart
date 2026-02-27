import 'package:pulumi/pulumi.dart';
import '../vmware_cluster_anti_affinity_groups/vmware_cluster_anti_affinity_groups.dart';
import '../vmware_cluster_authorization/vmware_cluster_authorization.dart';
import '../vmware_cluster_auto_repair_config/vmware_cluster_auto_repair_config.dart';
import '../vmware_cluster_control_plane_node/vmware_cluster_control_plane_node.dart';
import '../vmware_cluster_dataplane_v2/vmware_cluster_dataplane_v2.dart';
import '../vmware_cluster_fleet/vmware_cluster_fleet.dart';
import '../vmware_cluster_load_balancer/vmware_cluster_load_balancer.dart';
import '../vmware_cluster_network_config/vmware_cluster_network_config.dart';
import '../vmware_cluster_status/vmware_cluster_status.dart';
import '../vmware_cluster_storage/vmware_cluster_storage.dart';
import '../vmware_cluster_upgrade_policy/vmware_cluster_upgrade_policy.dart';
import '../vmware_cluster_validation_check/vmware_cluster_validation_check.dart';
import '../vmware_cluster_vcenter/vmware_cluster_vcenter.dart';
import 'vmware_cluster_args.dart';

/// A Google VMware User Cluster.
///
///
/// To get more information about VmwareCluster, see:
///
/// * [API documentation](https://cloud.google.com/kubernetes-engine/distributed-cloud/reference/on-prem-api/rest/v1/projects.locations.vmwareClusters)
///
/// ## Example Usage
///
/// ### Gkeonprem Vmware Cluster Basic
///
///
///
/// ### Gkeonprem Vmware Cluster F5lb
///
///
///
/// ### Gkeonprem Vmware Cluster Manuallb
///
///
///
///
/// ## Import
///
/// VmwareCluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/vmwareClusters/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, VmwareCluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/vMwareCluster:VMwareCluster default projects/{{project}}/locations/{{location}}/vmwareClusters/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/vMwareCluster:VMwareCluster default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/vMwareCluster:VMwareCluster default {{location}}/{{name}}
/// ```
class VMwareCluster extends CustomResource {
  /// The admin cluster this VMware User Cluster belongs to.
  /// This is the full resource name of the admin cluster's hub membership.
  /// In the future, references to other resource types might be allowed if
  /// admin clusters are modeled as their own resources.
  late final Output<String> adminClusterMembership;

  /// Annotations on the VMware User Cluster.
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
  late final Output<Map<String, String>?> annotations;

  /// AAGConfig specifies whether to spread VMware User Cluster nodes across at
  /// least three physical hosts in the datacenter.
  /// Structure is documented below.
  late final Output<VMwareClusterAntiAffinityGroups> antiAffinityGroups;

  /// RBAC policy that will be applied and managed by GKE On-Prem.
  /// Structure is documented below.
  late final Output<VMwareClusterAuthorization?> authorization;

  /// Configuration for auto repairing.
  /// Structure is documented below.
  late final Output<VMwareClusterAutoRepairConfig> autoRepairConfig;

  /// VMware User Cluster control plane nodes must have either 1 or 3 replicas.
  /// Structure is documented below.
  late final Output<VMwareClusterControlPlaneNode> controlPlaneNode;

  /// The time at which VMware User Cluster was created.
  late final Output<String> createTime;

  /// VmwareDataplaneV2Config specifies configuration for Dataplane V2.
  /// Structure is documented below.
  late final Output<VMwareClusterDataplaneV2> dataplaneV2;

  /// The time at which VMware User Cluster was deleted.
  late final Output<String> deleteTime;

  /// A human readable description of this VMware User Cluster.
  late final Output<String?> description;

  /// Disable bundled ingress.
  late final Output<bool?> disableBundledIngress;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// Enable advanced cluster. Default to false.
  late final Output<bool?> enableAdvancedCluster;

  /// Enable control plane V2. Default to false.
  late final Output<bool?> enableControlPlaneV2;

  /// The DNS name of VMware User Cluster's API server.
  late final Output<String> endpoint;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  /// Allows clients to perform consistent read-modify-writes
  /// through optimistic concurrency control.
  late final Output<String> etag;

  /// Fleet configuration for the cluster.
  /// Structure is documented below.
  late final Output<List<VMwareClusterFleet>> fleets;

  /// Load Balancer configuration.
  /// Structure is documented below.
  late final Output<VMwareClusterLoadBalancer?> loadBalancer;

  /// The object name of the VMware OnPremUserCluster custom resource on the
  /// associated admin cluster. This field is used to support conflicting
  /// names when enrolling existing clusters to the API. When used as a part of
  /// cluster enrollment, this field will differ from the ID in the resource
  /// name. For new clusters, this field will match the user provided cluster ID
  /// and be visible in the last component of the resource name. It is not
  /// modifiable.
  /// All users should use this name to access their cluster using gkectl or
  /// kubectl and should expect to see the local name when viewing admin
  /// cluster controller logs.
  late final Output<String> localName;

  /// The location of the resource.
  late final Output<String> location;

  /// The VMware cluster name.
  late final Output<String> name;

  /// The VMware User Cluster network configuration.
  /// Structure is documented below.
  late final Output<VMwareClusterNetworkConfig?> networkConfig;

  /// The Anthos clusters on the VMware version for your user cluster.
  late final Output<String> onPremVersion;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// If set, there are currently changes in flight to the VMware User Cluster.
  late final Output<bool> reconciling;

  /// (Output)
  /// The lifecycle state of the condition.
  late final Output<String> state;

  /// (Output)
  /// Specifies the detailed validation check status
  /// Structure is documented below.
  late final Output<List<VMwareClusterStatus>> statuses;

  /// Storage configuration.
  /// Structure is documented below.
  late final Output<VMwareClusterStorage> storage;

  /// The unique identifier of the VMware User Cluster.
  late final Output<String> uid;

  /// The time at which VMware User Cluster was last updated.
  late final Output<String> updateTime;

  /// Specifies upgrade policy for the cluster.
  /// Structure is documented below.
  late final Output<VMwareClusterUpgradePolicy?> upgradePolicy;

  /// ValidationCheck represents the result of the preflight check job.
  /// Structure is documented below.
  late final Output<List<VMwareClusterValidationCheck>> validationChecks;

  /// VmwareVCenterConfig specifies vCenter config for the user cluster.
  /// Inherited from the admin cluster.
  /// Structure is documented below.
  late final Output<VMwareClusterVcenter> vcenter;

  /// Enable VM tracking.
  late final Output<bool> vmTrackingEnabled;

  VMwareCluster(
    String name, {
    VMwareClusterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:gkeonprem/vMwareCluster:VMwareCluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.adminClusterMembership =
        registerOutput<String>('adminClusterMembership');
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.antiAffinityGroups =
        registerOutput<VMwareClusterAntiAffinityGroups>('antiAffinityGroups');
    this.authorization =
        registerOutput<VMwareClusterAuthorization?>('authorization');
    this.autoRepairConfig =
        registerOutput<VMwareClusterAutoRepairConfig>('autoRepairConfig');
    this.controlPlaneNode =
        registerOutput<VMwareClusterControlPlaneNode>('controlPlaneNode');
    this.createTime = registerOutput<String>('createTime');
    this.dataplaneV2 = registerOutput<VMwareClusterDataplaneV2>('dataplaneV2');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.description = registerOutput<String?>('description');
    this.disableBundledIngress = registerOutput<bool?>('disableBundledIngress');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.enableAdvancedCluster = registerOutput<bool?>('enableAdvancedCluster');
    this.enableControlPlaneV2 = registerOutput<bool?>('enableControlPlaneV2');
    this.endpoint = registerOutput<String>('endpoint');
    this.etag = registerOutput<String>('etag');
    this.fleets = registerOutput<List<VMwareClusterFleet>>('fleets');
    this.loadBalancer =
        registerOutput<VMwareClusterLoadBalancer?>('loadBalancer');
    this.localName = registerOutput<String>('localName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.networkConfig =
        registerOutput<VMwareClusterNetworkConfig?>('networkConfig');
    this.onPremVersion = registerOutput<String>('onPremVersion');
    this.project = registerOutput<String>('project');
    this.reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    this.statuses = registerOutput<List<VMwareClusterStatus>>('statuses');
    this.storage = registerOutput<VMwareClusterStorage>('storage');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.upgradePolicy =
        registerOutput<VMwareClusterUpgradePolicy?>('upgradePolicy');
    this.validationChecks =
        registerOutput<List<VMwareClusterValidationCheck>>('validationChecks');
    this.vcenter = registerOutput<VMwareClusterVcenter>('vcenter');
    this.vmTrackingEnabled = registerOutput<bool>('vmTrackingEnabled');
  }
}
