import 'package:pulumi/pulumi.dart' as pulumi;
import '../bare_metal_cluster_binary_authorization/bare_metal_cluster_binary_authorization.dart';
import '../bare_metal_cluster_cluster_operations/bare_metal_cluster_cluster_operations.dart';
import '../bare_metal_cluster_control_plane/bare_metal_cluster_control_plane.dart';
import '../bare_metal_cluster_fleet/bare_metal_cluster_fleet.dart';
import '../bare_metal_cluster_load_balancer/bare_metal_cluster_load_balancer.dart';
import '../bare_metal_cluster_maintenance_config/bare_metal_cluster_maintenance_config.dart';
import '../bare_metal_cluster_network_config/bare_metal_cluster_network_config.dart';
import '../bare_metal_cluster_node_access_config/bare_metal_cluster_node_access_config.dart';
import '../bare_metal_cluster_node_config/bare_metal_cluster_node_config.dart';
import '../bare_metal_cluster_os_environment_config/bare_metal_cluster_os_environment_config.dart';
import '../bare_metal_cluster_proxy/bare_metal_cluster_proxy.dart';
import '../bare_metal_cluster_security_config/bare_metal_cluster_security_config.dart';
import '../bare_metal_cluster_status/bare_metal_cluster_status.dart';
import '../bare_metal_cluster_storage/bare_metal_cluster_storage.dart';
import '../bare_metal_cluster_upgrade_policy/bare_metal_cluster_upgrade_policy.dart';
import '../bare_metal_cluster_validation_check/bare_metal_cluster_validation_check.dart';
import 'bare_metal_cluster_args.dart';

/// A Google Bare Metal User Cluster.
///
///
/// To get more information about BareMetalCluster, see:
///
/// * [API documentation](https://cloud.google.com/kubernetes-engine/distributed-cloud/reference/on-prem-api/rest/v1/projects.locations.bareMetalClusters)
///
/// ## Example Usage
///
/// ### Gkeonprem Bare Metal Cluster Basic
///
///
///
/// ### Gkeonprem Bare Metal Cluster Manuallb
///
///
///
/// ### Gkeonprem Bare Metal Cluster Bgplb
///
///
///
///
/// ## Import
///
/// BareMetalCluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/bareMetalClusters/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, BareMetalCluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/bareMetalCluster:BareMetalCluster default projects/{{project}}/locations/{{location}}/bareMetalClusters/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/bareMetalCluster:BareMetalCluster default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/bareMetalCluster:BareMetalCluster default {{location}}/{{name}}
/// ```
class BareMetalCluster extends pulumi.CustomResource {
  /// The Admin Cluster this Bare Metal User Cluster belongs to.
  /// This is the full resource name of the Admin Cluster's hub membership.
  late final pulumi.Output<String> adminClusterMembership;

  /// Annotations on the Bare Metal User Cluster.
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
  late final pulumi.Output<Map<String, String>?> annotations;

  /// A human readable description of this Bare Metal User Cluster.
  late final pulumi.Output<String> bareMetalVersion;

  /// Binary Authorization related configurations.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalClusterBinaryAuthorization?>
      binaryAuthorization;

  /// Specifies the User Cluster's observability infrastructure.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalClusterClusterOperations?>
      clusterOperations;

  /// Specifies the control plane configuration.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalClusterControlPlane> controlPlane;

  /// The time the cluster was created, in RFC3339 text format.
  late final pulumi.Output<String> createTime;

  /// The time the cluster was deleted, in RFC3339 text format.
  late final pulumi.Output<String> deleteTime;

  /// A human readable description of this Bare Metal User Cluster.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// The IP address name of Bare Metal User Cluster's API server.
  late final pulumi.Output<String> endpoint;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  /// Allows clients to perform consistent read-modify-writes
  /// through optimistic concurrency control.
  late final pulumi.Output<String> etag;

  /// Fleet related configuration.
  /// Fleets are a Google Cloud concept for logically organizing clusters,
  /// letting you use and manage multi-cluster capabilities and apply
  /// consistent policies across your systems.
  /// See [Anthos Fleets](https://cloud.google.com/anthos/multicluster-management/fleets) for
  /// more details on Anthos multi-cluster capabilities using Fleets.
  /// Structure is documented below.
  late final pulumi.Output<List<BareMetalClusterFleet>> fleets;

  /// Specifies the load balancer configuration.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalClusterLoadBalancer> loadBalancer;

  /// The object name of the Bare Metal Cluster custom resource on the
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

  /// Specifies the workload node configurations.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalClusterMaintenanceConfig?>
      maintenanceConfig;

  /// The bare metal cluster name.
  late final pulumi.Output<String> name;

  /// Network configuration.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalClusterNetworkConfig> networkConfig;

  /// Specifies the node access related settings for the bare metal user cluster.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalClusterNodeAccessConfig?> nodeAccessConfig;

  /// Specifies the workload node configurations.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalClusterNodeConfig?> nodeConfig;

  /// OS environment related configurations.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalClusterOsEnvironmentConfig?>
      osEnvironmentConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Specifies the cluster proxy configuration.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalClusterProxy?> proxy;

  /// If set, there are currently changes in flight to the Bare Metal User Cluster.
  late final pulumi.Output<bool> reconciling;

  /// Specifies the security related settings for the Bare Metal User Cluster.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalClusterSecurityConfig?> securityConfig;

  /// (Output)
  /// The lifecycle state of the condition.
  late final pulumi.Output<String> state;

  /// (Output)
  /// Specifies the detailed validation check status
  /// Structure is documented below.
  late final pulumi.Output<List<BareMetalClusterStatus>> statuses;

  /// Specifies the cluster storage configuration.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalClusterStorage> storage;

  /// The unique identifier of the Bare Metal User Cluster.
  late final pulumi.Output<String> uid;

  /// The time the cluster was last updated, in RFC3339 text format.
  late final pulumi.Output<String> updateTime;

  /// The cluster upgrade policy.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalClusterUpgradePolicy?> upgradePolicy;

  /// Specifies the security related settings for the Bare Metal User Cluster.
  /// Structure is documented below.
  late final pulumi.Output<List<BareMetalClusterValidationCheck>>
      validationChecks;

  BareMetalCluster(
    String name, {
    BareMetalClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkeonprem/bareMetalCluster:BareMetalCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.adminClusterMembership =
        registerOutput<String>('adminClusterMembership');
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.bareMetalVersion = registerOutput<String>('bareMetalVersion');
    this.binaryAuthorization =
        registerOutput<BareMetalClusterBinaryAuthorization?>(
            'binaryAuthorization');
    this.clusterOperations =
        registerOutput<BareMetalClusterClusterOperations?>('clusterOperations');
    this.controlPlane =
        registerOutput<BareMetalClusterControlPlane>('controlPlane');
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.description = registerOutput<String?>('description');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.endpoint = registerOutput<String>('endpoint');
    this.etag = registerOutput<String>('etag');
    this.fleets = registerOutput<List<BareMetalClusterFleet>>('fleets');
    this.loadBalancer =
        registerOutput<BareMetalClusterLoadBalancer>('loadBalancer');
    this.localName = registerOutput<String>('localName');
    this.location = registerOutput<String>('location');
    this.maintenanceConfig =
        registerOutput<BareMetalClusterMaintenanceConfig?>('maintenanceConfig');
    this.name = registerOutput<String>('name');
    this.networkConfig =
        registerOutput<BareMetalClusterNetworkConfig>('networkConfig');
    this.nodeAccessConfig =
        registerOutput<BareMetalClusterNodeAccessConfig?>('nodeAccessConfig');
    this.nodeConfig = registerOutput<BareMetalClusterNodeConfig?>('nodeConfig');
    this.osEnvironmentConfig =
        registerOutput<BareMetalClusterOsEnvironmentConfig?>(
            'osEnvironmentConfig');
    this.project = registerOutput<String>('project');
    this.proxy = registerOutput<BareMetalClusterProxy?>('proxy');
    this.reconciling = registerOutput<bool>('reconciling');
    this.securityConfig =
        registerOutput<BareMetalClusterSecurityConfig?>('securityConfig');
    this.state = registerOutput<String>('state');
    this.statuses = registerOutput<List<BareMetalClusterStatus>>('statuses');
    this.storage = registerOutput<BareMetalClusterStorage>('storage');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.upgradePolicy =
        registerOutput<BareMetalClusterUpgradePolicy?>('upgradePolicy');
    this.validationChecks =
        registerOutput<List<BareMetalClusterValidationCheck>>(
            'validationChecks');
  }
}
