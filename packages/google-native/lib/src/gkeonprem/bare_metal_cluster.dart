import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_cluster_args.dart';
import 'bare_metal_cluster_operations_config_response.dart';
import 'bare_metal_cluster_upgrade_policy_response.dart';
import 'bare_metal_control_plane_config_response.dart';
import 'bare_metal_load_balancer_config_response.dart';
import 'bare_metal_maintenance_config_response.dart';
import 'bare_metal_maintenance_status_response.dart';
import 'bare_metal_network_config_response.dart';
import 'bare_metal_node_access_config_response.dart';
import 'bare_metal_os_environment_config_response.dart';
import 'bare_metal_proxy_config_response.dart';
import 'bare_metal_security_config_response.dart';
import 'bare_metal_storage_config_response.dart';
import 'bare_metal_workload_node_config_response.dart';
import 'binary_authorization_response.dart';
import 'fleet_response.dart';
import 'resource_status_response.dart';
import 'validation_check_response.dart';

/// Creates a new bare metal cluster in a given project and location.
class BareMetalCluster extends pulumi.CustomResource {
  /// The admin cluster this bare metal user cluster belongs to. This is the full resource name of the admin cluster's fleet membership.
  late final pulumi.Output<String> adminClusterMembership;

  /// The resource name of the bare metal admin cluster managing this user cluster.
  late final pulumi.Output<String> adminClusterName;

  /// Annotations on the bare metal user cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  late final pulumi.Output<Map<String, String>> annotations;

  /// Required. User provided identifier that is used as part of the resource name; must conform to RFC-1034 and additionally restrict to lower-cased letters. This comes out roughly to: /^a-z+[a-z0-9]$/
  late final pulumi.Output<String> bareMetalClusterId;

  /// The Anthos clusters on bare metal version for your user cluster.
  late final pulumi.Output<String> bareMetalVersion;

  /// Binary Authorization related configurations.
  late final pulumi.Output<BinaryAuthorizationResponse> binaryAuthorization;

  /// Cluster operations configuration.
  late final pulumi.Output<BareMetalClusterOperationsConfigResponse>
      clusterOperations;

  /// Control plane configuration.
  late final pulumi.Output<BareMetalControlPlaneConfigResponse> controlPlane;

  /// The time when the bare metal user cluster was created.
  late final pulumi.Output<String> createTime;

  /// The time when the bare metal user cluster was deleted. If the resource is not deleted, this must be empty
  late final pulumi.Output<String> deleteTime;

  /// A human readable description of this bare metal user cluster.
  late final pulumi.Output<String> description;

  /// The IP address of the bare metal user cluster's API server.
  late final pulumi.Output<String> endpoint;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  late final pulumi.Output<String> etag;

  /// Fleet configuration for the cluster.
  late final pulumi.Output<FleetResponse> fleet;

  /// Load balancer configuration.
  late final pulumi.Output<BareMetalLoadBalancerConfigResponse> loadBalancer;

  /// The object name of the bare metal user cluster custom resource on the associated admin cluster. This field is used to support conflicting names when enrolling existing clusters to the API. When used as a part of cluster enrollment, this field will differ from the name in the resource name. For new clusters, this field will match the user provided cluster name and be visible in the last component of the resource name. It is not modifiable. When the local name and cluster name differ, the local name is used in the admin cluster controller logs. You use the cluster name when accessing the cluster using bmctl and kubectl.
  late final pulumi.Output<String> localName;
  late final pulumi.Output<String> location;

  /// Maintenance configuration.
  late final pulumi.Output<BareMetalMaintenanceConfigResponse>
      maintenanceConfig;

  /// Status of on-going maintenance tasks.
  late final pulumi.Output<BareMetalMaintenanceStatusResponse>
      maintenanceStatus;

  /// Immutable. The bare metal user cluster resource name.
  late final pulumi.Output<String> name;

  /// Network configuration.
  late final pulumi.Output<BareMetalNetworkConfigResponse> networkConfig;

  /// Node access related configurations.
  late final pulumi.Output<BareMetalNodeAccessConfigResponse> nodeAccessConfig;

  /// Workload node configuration.
  late final pulumi.Output<BareMetalWorkloadNodeConfigResponse> nodeConfig;

  /// OS environment related configurations.
  late final pulumi.Output<BareMetalOsEnvironmentConfigResponse>
      osEnvironmentConfig;
  late final pulumi.Output<String> project;

  /// Proxy configuration.
  late final pulumi.Output<BareMetalProxyConfigResponse> proxy;

  /// If set, there are currently changes in flight to the bare metal user cluster.
  late final pulumi.Output<bool> reconciling;

  /// Security related setting configuration.
  late final pulumi.Output<BareMetalSecurityConfigResponse> securityConfig;

  /// The current state of the bare metal user cluster.
  late final pulumi.Output<String> state;

  /// Detailed cluster status.
  late final pulumi.Output<ResourceStatusResponse> status;

  /// Storage configuration.
  late final pulumi.Output<BareMetalStorageConfigResponse> storage;

  /// The unique identifier of the bare metal user cluster.
  late final pulumi.Output<String> uid;

  /// The time when the bare metal user cluster was last updated.
  late final pulumi.Output<String> updateTime;

  /// The cluster upgrade policy.
  late final pulumi.Output<BareMetalClusterUpgradePolicyResponse> upgradePolicy;

  /// The result of the preflight check.
  late final pulumi.Output<ValidationCheckResponse> validationCheck;

  /// Creates a new [BareMetalCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BareMetalCluster]. {@macro pulumi_gkeonprem_v1_bare_metal_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BareMetalCluster(
    String name, {
    BareMetalClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:gkeonprem/v1:BareMetalCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.adminClusterMembership =
        registerOutput<String>('adminClusterMembership');
    this.adminClusterName = registerOutput<String>('adminClusterName');
    this.annotations = registerOutput<Map<String, String>>('annotations');
    this.bareMetalClusterId = registerOutput<String>('bareMetalClusterId');
    this.bareMetalVersion = registerOutput<String>('bareMetalVersion');
    this.binaryAuthorization =
        registerOutput<BinaryAuthorizationResponse>('binaryAuthorization');
    this.clusterOperations =
        registerOutput<BareMetalClusterOperationsConfigResponse>(
            'clusterOperations');
    this.controlPlane =
        registerOutput<BareMetalControlPlaneConfigResponse>('controlPlane');
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.description = registerOutput<String>('description');
    this.endpoint = registerOutput<String>('endpoint');
    this.etag = registerOutput<String>('etag');
    this.fleet = registerOutput<FleetResponse>('fleet');
    this.loadBalancer =
        registerOutput<BareMetalLoadBalancerConfigResponse>('loadBalancer');
    this.localName = registerOutput<String>('localName');
    this.location = registerOutput<String>('location');
    this.maintenanceConfig =
        registerOutput<BareMetalMaintenanceConfigResponse>('maintenanceConfig');
    this.maintenanceStatus =
        registerOutput<BareMetalMaintenanceStatusResponse>('maintenanceStatus');
    this.name = registerOutput<String>('name');
    this.networkConfig =
        registerOutput<BareMetalNetworkConfigResponse>('networkConfig');
    this.nodeAccessConfig =
        registerOutput<BareMetalNodeAccessConfigResponse>('nodeAccessConfig');
    this.nodeConfig =
        registerOutput<BareMetalWorkloadNodeConfigResponse>('nodeConfig');
    this.osEnvironmentConfig =
        registerOutput<BareMetalOsEnvironmentConfigResponse>(
            'osEnvironmentConfig');
    this.project = registerOutput<String>('project');
    this.proxy = registerOutput<BareMetalProxyConfigResponse>('proxy');
    this.reconciling = registerOutput<bool>('reconciling');
    this.securityConfig =
        registerOutput<BareMetalSecurityConfigResponse>('securityConfig');
    this.state = registerOutput<String>('state');
    this.status = registerOutput<ResourceStatusResponse>('status');
    this.storage = registerOutput<BareMetalStorageConfigResponse>('storage');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.upgradePolicy =
        registerOutput<BareMetalClusterUpgradePolicyResponse>('upgradePolicy');
    this.validationCheck =
        registerOutput<ValidationCheckResponse>('validationCheck');
  }
}
