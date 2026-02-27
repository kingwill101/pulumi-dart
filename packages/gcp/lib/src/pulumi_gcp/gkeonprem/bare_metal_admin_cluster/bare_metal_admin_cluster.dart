import 'package:pulumi/pulumi.dart';
import '../bare_metal_admin_cluster_cluster_operations/bare_metal_admin_cluster_cluster_operations.dart';
import '../bare_metal_admin_cluster_control_plane/bare_metal_admin_cluster_control_plane.dart';
import '../bare_metal_admin_cluster_fleet/bare_metal_admin_cluster_fleet.dart';
import '../bare_metal_admin_cluster_load_balancer/bare_metal_admin_cluster_load_balancer.dart';
import '../bare_metal_admin_cluster_maintenance_config/bare_metal_admin_cluster_maintenance_config.dart';
import '../bare_metal_admin_cluster_network_config/bare_metal_admin_cluster_network_config.dart';
import '../bare_metal_admin_cluster_node_access_config/bare_metal_admin_cluster_node_access_config.dart';
import '../bare_metal_admin_cluster_node_config/bare_metal_admin_cluster_node_config.dart';
import '../bare_metal_admin_cluster_proxy/bare_metal_admin_cluster_proxy.dart';
import '../bare_metal_admin_cluster_security_config/bare_metal_admin_cluster_security_config.dart';
import '../bare_metal_admin_cluster_status/bare_metal_admin_cluster_status.dart';
import '../bare_metal_admin_cluster_storage/bare_metal_admin_cluster_storage.dart';
import '../bare_metal_admin_cluster_validation_check/bare_metal_admin_cluster_validation_check.dart';
import 'bare_metal_admin_cluster_args.dart';

/// A Google Bare Metal Admin Cluster.
///
///
/// To get more information about BareMetalAdminCluster, see:
///
/// * [API documentation](https://cloud.google.com/kubernetes-engine/distributed-cloud/reference/on-prem-api/rest/v1/projects.locations.bareMetalAdminClusters)
///
/// ## Example Usage
///
/// ### Gkeonprem Bare Metal Admin Cluster Basic
///
///
///
/// ### Gkeonprem Bare Metal Admin Cluster Full
///
///
///
///
/// ## Import
///
/// BareMetalAdminCluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/bareMetalAdminClusters/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, BareMetalAdminCluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/bareMetalAdminCluster:BareMetalAdminCluster default projects/{{project}}/locations/{{location}}/bareMetalAdminClusters/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/bareMetalAdminCluster:BareMetalAdminCluster default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/bareMetalAdminCluster:BareMetalAdminCluster default {{location}}/{{name}}
/// ```
class BareMetalAdminCluster extends CustomResource {
  /// Annotations on the Bare Metal Admin Cluster.
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

  /// A human readable description of this Bare Metal Admin Cluster.
  late final Output<String?> bareMetalVersion;

  /// Specifies the Admin Cluster's observability infrastructure.
  /// Structure is documented below.
  late final Output<BareMetalAdminClusterClusterOperations?> clusterOperations;

  /// Specifies the control plane configuration.
  /// Structure is documented below.
  late final Output<BareMetalAdminClusterControlPlane?> controlPlane;

  /// The time the cluster was created, in RFC3339 text format.
  late final Output<String> createTime;

  /// The time the cluster was deleted, in RFC3339 text format.
  late final Output<String> deleteTime;

  /// A human readable description of this Bare Metal Admin Cluster.
  late final Output<String?> description;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// The IP address name of Bare Metal Admin Cluster's API server.
  late final Output<String> endpoint;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  /// Allows clients to perform consistent read-modify-writes
  /// through optimistic concurrency control.
  late final Output<String> etag;

  /// Fleet related configuration.
  /// Fleets are a Google Cloud concept for logically organizing clusters,
  /// letting you use and manage multi-cluster capabilities and apply
  /// consistent policies across your systems.
  /// See [Anthos Fleets](https://cloud.google.com/anthos/multicluster-management/fleets) for
  /// more details on Anthos multi-cluster capabilities using Fleets.
  /// Structure is documented below.
  late final Output<List<BareMetalAdminClusterFleet>> fleets;

  /// Specifies the load balancer configuration.
  /// Structure is documented below.
  late final Output<BareMetalAdminClusterLoadBalancer?> loadBalancer;

  /// The object name of the Bare Metal Admin Cluster custom resource on the
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

  /// Specifies the workload node configurations.
  /// Structure is documented below.
  late final Output<BareMetalAdminClusterMaintenanceConfig?> maintenanceConfig;

  /// The bare metal admin cluster name.
  late final Output<String> name;

  /// Network configuration.
  /// Structure is documented below.
  late final Output<BareMetalAdminClusterNetworkConfig?> networkConfig;

  /// Specifies the node access related settings for the bare metal user cluster.
  /// Structure is documented below.
  late final Output<BareMetalAdminClusterNodeAccessConfig?> nodeAccessConfig;

  /// Specifies the workload node configurations.
  /// Structure is documented below.
  late final Output<BareMetalAdminClusterNodeConfig?> nodeConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Specifies the cluster proxy configuration.
  /// Structure is documented below.
  late final Output<BareMetalAdminClusterProxy?> proxy;

  /// If set, there are currently changes in flight to the Bare Metal Admin Cluster.
  late final Output<bool> reconciling;

  /// Specifies the security related settings for the Bare Metal User Cluster.
  /// Structure is documented below.
  late final Output<BareMetalAdminClusterSecurityConfig?> securityConfig;

  /// (Output)
  /// The lifecycle state of the condition.
  late final Output<String> state;

  /// (Output)
  /// Specifies the detailed validation check status
  /// Structure is documented below.
  late final Output<List<BareMetalAdminClusterStatus>> statuses;

  /// Specifies the cluster storage configuration.
  /// Structure is documented below.
  late final Output<BareMetalAdminClusterStorage?> storage;

  /// The unique identifier of the Bare Metal Admin Cluster.
  late final Output<String> uid;

  /// The time the cluster was last updated, in RFC3339 text format.
  late final Output<String> updateTime;

  /// Specifies the security related settings for the Bare Metal Admin Cluster.
  /// Structure is documented below.
  late final Output<List<BareMetalAdminClusterValidationCheck>>
      validationChecks;

  BareMetalAdminCluster(
    String name, {
    BareMetalAdminClusterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:gkeonprem/bareMetalAdminCluster:BareMetalAdminCluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.bareMetalVersion = registerOutput<String?>('bareMetalVersion');
    this.clusterOperations =
        registerOutput<BareMetalAdminClusterClusterOperations?>(
            'clusterOperations');
    this.controlPlane =
        registerOutput<BareMetalAdminClusterControlPlane?>('controlPlane');
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.description = registerOutput<String?>('description');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.endpoint = registerOutput<String>('endpoint');
    this.etag = registerOutput<String>('etag');
    this.fleets = registerOutput<List<BareMetalAdminClusterFleet>>('fleets');
    this.loadBalancer =
        registerOutput<BareMetalAdminClusterLoadBalancer?>('loadBalancer');
    this.localName = registerOutput<String>('localName');
    this.location = registerOutput<String>('location');
    this.maintenanceConfig =
        registerOutput<BareMetalAdminClusterMaintenanceConfig?>(
            'maintenanceConfig');
    this.name = registerOutput<String>('name');
    this.networkConfig =
        registerOutput<BareMetalAdminClusterNetworkConfig?>('networkConfig');
    this.nodeAccessConfig =
        registerOutput<BareMetalAdminClusterNodeAccessConfig?>(
            'nodeAccessConfig');
    this.nodeConfig =
        registerOutput<BareMetalAdminClusterNodeConfig?>('nodeConfig');
    this.project = registerOutput<String>('project');
    this.proxy = registerOutput<BareMetalAdminClusterProxy?>('proxy');
    this.reconciling = registerOutput<bool>('reconciling');
    this.securityConfig =
        registerOutput<BareMetalAdminClusterSecurityConfig?>('securityConfig');
    this.state = registerOutput<String>('state');
    this.statuses =
        registerOutput<List<BareMetalAdminClusterStatus>>('statuses');
    this.storage = registerOutput<BareMetalAdminClusterStorage?>('storage');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.validationChecks =
        registerOutput<List<BareMetalAdminClusterValidationCheck>>(
            'validationChecks');
  }
}
