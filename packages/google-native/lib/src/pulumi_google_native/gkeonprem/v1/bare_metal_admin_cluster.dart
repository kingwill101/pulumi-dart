import 'package:pulumi/pulumi.dart';
import 'bare_metal_admin_cluster_args.dart';
import 'bare_metal_admin_cluster_operations_config_response.dart';
import 'bare_metal_admin_control_plane_config_response.dart';
import 'bare_metal_admin_load_balancer_config_response.dart';
import 'bare_metal_admin_maintenance_config_response.dart';
import 'bare_metal_admin_maintenance_status_response.dart';
import 'bare_metal_admin_network_config_response.dart';
import 'bare_metal_admin_node_access_config_response.dart';
import 'bare_metal_admin_os_environment_config_response.dart';
import 'bare_metal_admin_proxy_config_response.dart';
import 'bare_metal_admin_security_config_response.dart';
import 'bare_metal_admin_storage_config_response.dart';
import 'bare_metal_admin_workload_node_config_response.dart';
import 'binary_authorization_response3.dart';
import 'fleet_response3.dart';
import 'resource_status_response4.dart';
import 'validation_check_response.dart';

/// Creates a new bare metal admin cluster in a given project and location. The API needs to be combined with creating a bootstrap cluster to work. See: https://cloud.google.com/anthos/clusters/docs/bare-metal/latest/installing/creating-clusters/create-admin-cluster-api#prepare_bootstrap_environment
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class BareMetalAdminCluster extends CustomResource {
  /// Annotations on the bare metal admin cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  late final Output<Map<String, String>> annotations;

  /// Required. User provided identifier that is used as part of the resource name; must conform to RFC-1034 and additionally restrict to lower-cased letters. This comes out roughly to: /^a-z+[a-z0-9]$/
  late final Output<String> bareMetalAdminClusterId;

  /// The Anthos clusters on bare metal version for the bare metal admin cluster.
  late final Output<String> bareMetalVersion;

  /// Binary Authorization related configurations.
  late final Output<BinaryAuthorizationResponse3> binaryAuthorization;

  /// Cluster operations configuration.
  late final Output<BareMetalAdminClusterOperationsConfigResponse>
      clusterOperations;

  /// Control plane configuration.
  late final Output<BareMetalAdminControlPlaneConfigResponse> controlPlane;

  /// The time at which this bare metal admin cluster was created.
  late final Output<String> createTime;

  /// The time at which this bare metal admin cluster was deleted. If the resource is not deleted, this must be empty
  late final Output<String> deleteTime;

  /// A human readable description of this bare metal admin cluster.
  late final Output<String> description;

  /// The IP address name of bare metal admin cluster's API server.
  late final Output<String> endpoint;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  late final Output<String> etag;

  /// Fleet configuration for the cluster.
  late final Output<FleetResponse3> fleet;

  /// Load balancer configuration.
  late final Output<BareMetalAdminLoadBalancerConfigResponse> loadBalancer;

  /// The object name of the bare metal cluster custom resource. This field is used to support conflicting names when enrolling existing clusters to the API. When used as a part of cluster enrollment, this field will differ from the ID in the resource name. For new clusters, this field will match the user provided cluster name and be visible in the last component of the resource name. It is not modifiable. All users should use this name to access their cluster using gkectl or kubectl and should expect to see the local name when viewing admin cluster controller logs.
  late final Output<String> localName;
  late final Output<String> location;

  /// Maintenance configuration.
  late final Output<BareMetalAdminMaintenanceConfigResponse> maintenanceConfig;

  /// MaintenanceStatus representing state of maintenance.
  late final Output<BareMetalAdminMaintenanceStatusResponse> maintenanceStatus;

  /// Immutable. The bare metal admin cluster resource name.
  late final Output<String> name;

  /// Network configuration.
  late final Output<BareMetalAdminNetworkConfigResponse> networkConfig;

  /// Node access related configurations.
  late final Output<BareMetalAdminNodeAccessConfigResponse> nodeAccessConfig;

  /// Workload node configuration.
  late final Output<BareMetalAdminWorkloadNodeConfigResponse> nodeConfig;

  /// OS environment related configurations.
  late final Output<BareMetalAdminOsEnvironmentConfigResponse>
      osEnvironmentConfig;
  late final Output<String> project;

  /// Proxy configuration.
  late final Output<BareMetalAdminProxyConfigResponse> proxy;

  /// If set, there are currently changes in flight to the bare metal Admin Cluster.
  late final Output<bool> reconciling;

  /// Security related configuration.
  late final Output<BareMetalAdminSecurityConfigResponse> securityConfig;

  /// The current state of the bare metal admin cluster.
  late final Output<String> state;

  /// ResourceStatus representing detailed cluster status.
  late final Output<ResourceStatusResponse4> status;

  /// Storage configuration.
  late final Output<BareMetalAdminStorageConfigResponse> storage;

  /// The unique identifier of the bare metal admin cluster.
  late final Output<String> uid;

  /// The time at which this bare metal admin cluster was last updated.
  late final Output<String> updateTime;

  /// ValidationCheck representing the result of the preflight check.
  late final Output<ValidationCheckResponse> validationCheck;

  BareMetalAdminCluster(
    String name, {
    BareMetalAdminClusterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:gkeonprem/v1:BareMetalAdminCluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>>('annotations');
    this.bareMetalAdminClusterId =
        registerOutput<String>('bareMetalAdminClusterId');
    this.bareMetalVersion = registerOutput<String>('bareMetalVersion');
    this.binaryAuthorization =
        registerOutput<BinaryAuthorizationResponse3>('binaryAuthorization');
    this.clusterOperations =
        registerOutput<BareMetalAdminClusterOperationsConfigResponse>(
            'clusterOperations');
    this.controlPlane =
        registerOutput<BareMetalAdminControlPlaneConfigResponse>(
            'controlPlane');
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.description = registerOutput<String>('description');
    this.endpoint = registerOutput<String>('endpoint');
    this.etag = registerOutput<String>('etag');
    this.fleet = registerOutput<FleetResponse3>('fleet');
    this.loadBalancer =
        registerOutput<BareMetalAdminLoadBalancerConfigResponse>(
            'loadBalancer');
    this.localName = registerOutput<String>('localName');
    this.location = registerOutput<String>('location');
    this.maintenanceConfig =
        registerOutput<BareMetalAdminMaintenanceConfigResponse>(
            'maintenanceConfig');
    this.maintenanceStatus =
        registerOutput<BareMetalAdminMaintenanceStatusResponse>(
            'maintenanceStatus');
    this.name = registerOutput<String>('name');
    this.networkConfig =
        registerOutput<BareMetalAdminNetworkConfigResponse>('networkConfig');
    this.nodeAccessConfig =
        registerOutput<BareMetalAdminNodeAccessConfigResponse>(
            'nodeAccessConfig');
    this.nodeConfig =
        registerOutput<BareMetalAdminWorkloadNodeConfigResponse>('nodeConfig');
    this.osEnvironmentConfig =
        registerOutput<BareMetalAdminOsEnvironmentConfigResponse>(
            'osEnvironmentConfig');
    this.project = registerOutput<String>('project');
    this.proxy = registerOutput<BareMetalAdminProxyConfigResponse>('proxy');
    this.reconciling = registerOutput<bool>('reconciling');
    this.securityConfig =
        registerOutput<BareMetalAdminSecurityConfigResponse>('securityConfig');
    this.state = registerOutput<String>('state');
    this.status = registerOutput<ResourceStatusResponse4>('status');
    this.storage =
        registerOutput<BareMetalAdminStorageConfigResponse>('storage');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.validationCheck =
        registerOutput<ValidationCheckResponse>('validationCheck');
  }
}
