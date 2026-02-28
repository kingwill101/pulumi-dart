// ignore_for_file: unused_element, unnecessary_cast

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
import 'binary_authorization_response.dart';
import 'fleet_response.dart';
import 'resource_status_response.dart';
import 'validation_check_response.dart';

/// Result data returned by getBareMetalAdminCluster.
class GetBareMetalAdminClusterResult {
  /// Annotations on the bare metal admin cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  final Map<String, String> annotations;

  /// The Anthos clusters on bare metal version for the bare metal admin cluster.
  final String bareMetalVersion;

  /// Binary Authorization related configurations.
  final BinaryAuthorizationResponse binaryAuthorization;

  /// Cluster operations configuration.
  final BareMetalAdminClusterOperationsConfigResponse clusterOperations;

  /// Control plane configuration.
  final BareMetalAdminControlPlaneConfigResponse controlPlane;

  /// The time at which this bare metal admin cluster was created.
  final String createTime;

  /// The time at which this bare metal admin cluster was deleted. If the resource is not deleted, this must be empty
  final String deleteTime;

  /// A human readable description of this bare metal admin cluster.
  final String description;

  /// The IP address name of bare metal admin cluster's API server.
  final String endpoint;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  final String etag;

  /// Fleet configuration for the cluster.
  final FleetResponse fleet;

  /// Load balancer configuration.
  final BareMetalAdminLoadBalancerConfigResponse loadBalancer;

  /// The object name of the bare metal cluster custom resource. This field is used to support conflicting names when enrolling existing clusters to the API. When used as a part of cluster enrollment, this field will differ from the ID in the resource name. For new clusters, this field will match the user provided cluster name and be visible in the last component of the resource name. It is not modifiable. All users should use this name to access their cluster using gkectl or kubectl and should expect to see the local name when viewing admin cluster controller logs.
  final String localName;

  /// Maintenance configuration.
  final BareMetalAdminMaintenanceConfigResponse maintenanceConfig;

  /// MaintenanceStatus representing state of maintenance.
  final BareMetalAdminMaintenanceStatusResponse maintenanceStatus;

  /// Immutable. The bare metal admin cluster resource name.
  final String name;

  /// Network configuration.
  final BareMetalAdminNetworkConfigResponse networkConfig;

  /// Node access related configurations.
  final BareMetalAdminNodeAccessConfigResponse nodeAccessConfig;

  /// Workload node configuration.
  final BareMetalAdminWorkloadNodeConfigResponse nodeConfig;

  /// OS environment related configurations.
  final BareMetalAdminOsEnvironmentConfigResponse osEnvironmentConfig;

  /// Proxy configuration.
  final BareMetalAdminProxyConfigResponse proxy;

  /// If set, there are currently changes in flight to the bare metal Admin Cluster.
  final bool reconciling;

  /// Security related configuration.
  final BareMetalAdminSecurityConfigResponse securityConfig;

  /// The current state of the bare metal admin cluster.
  final String state;

  /// ResourceStatus representing detailed cluster status.
  final ResourceStatusResponse status;

  /// Storage configuration.
  final BareMetalAdminStorageConfigResponse storage;

  /// The unique identifier of the bare metal admin cluster.
  final String uid;

  /// The time at which this bare metal admin cluster was last updated.
  final String updateTime;

  /// ValidationCheck representing the result of the preflight check.
  final ValidationCheckResponse validationCheck;

  /// Creates a new [GetBareMetalAdminClusterResult].
  /// [annotations] Annotations on the bare metal admin cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  /// [bareMetalVersion] The Anthos clusters on bare metal version for the bare metal admin cluster.
  /// [binaryAuthorization] Binary Authorization related configurations.
  /// [clusterOperations] Cluster operations configuration.
  /// [controlPlane] Control plane configuration.
  /// [createTime] The time at which this bare metal admin cluster was created.
  /// [deleteTime] The time at which this bare metal admin cluster was deleted. If the resource is not deleted, this must be empty
  /// [description] A human readable description of this bare metal admin cluster.
  /// [endpoint] The IP address name of bare metal admin cluster's API server.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  /// [fleet] Fleet configuration for the cluster.
  /// [loadBalancer] Load balancer configuration.
  /// [localName] The object name of the bare metal cluster custom resource. This field is used to support conflicting names when enrolling existing clusters to the API. When used as a part of cluster enrollment, this field will differ from the ID in the resource name. For new clusters, this field will match the user provided cluster name and be visible in the last component of the resource name. It is not modifiable. All users should use this name to access their cluster using gkectl or kubectl and should expect to see the local name when viewing admin cluster controller logs.
  /// [maintenanceConfig] Maintenance configuration.
  /// [maintenanceStatus] MaintenanceStatus representing state of maintenance.
  /// [name] Immutable. The bare metal admin cluster resource name.
  /// [networkConfig] Network configuration.
  /// [nodeAccessConfig] Node access related configurations.
  /// [nodeConfig] Workload node configuration.
  /// [osEnvironmentConfig] OS environment related configurations.
  /// [proxy] Proxy configuration.
  /// [reconciling] If set, there are currently changes in flight to the bare metal Admin Cluster.
  /// [securityConfig] Security related configuration.
  /// [state] The current state of the bare metal admin cluster.
  /// [status] ResourceStatus representing detailed cluster status.
  /// [storage] Storage configuration.
  /// [uid] The unique identifier of the bare metal admin cluster.
  /// [updateTime] The time at which this bare metal admin cluster was last updated.
  /// [validationCheck] ValidationCheck representing the result of the preflight check.
  GetBareMetalAdminClusterResult({
    required this.annotations,
    required this.bareMetalVersion,
    required this.binaryAuthorization,
    required this.clusterOperations,
    required this.controlPlane,
    required this.createTime,
    required this.deleteTime,
    required this.description,
    required this.endpoint,
    required this.etag,
    required this.fleet,
    required this.loadBalancer,
    required this.localName,
    required this.maintenanceConfig,
    required this.maintenanceStatus,
    required this.name,
    required this.networkConfig,
    required this.nodeAccessConfig,
    required this.nodeConfig,
    required this.osEnvironmentConfig,
    required this.proxy,
    required this.reconciling,
    required this.securityConfig,
    required this.state,
    required this.status,
    required this.storage,
    required this.uid,
    required this.updateTime,
    required this.validationCheck,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotations'] = annotations;
    map['bareMetalVersion'] = bareMetalVersion;
    map['binaryAuthorization'] = binaryAuthorization.toMap();
    map['clusterOperations'] = clusterOperations.toMap();
    map['controlPlane'] = controlPlane.toMap();
    map['createTime'] = createTime;
    map['deleteTime'] = deleteTime;
    map['description'] = description;
    map['endpoint'] = endpoint;
    map['etag'] = etag;
    map['fleet'] = fleet.toMap();
    map['loadBalancer'] = loadBalancer.toMap();
    map['localName'] = localName;
    map['maintenanceConfig'] = maintenanceConfig.toMap();
    map['maintenanceStatus'] = maintenanceStatus.toMap();
    map['name'] = name;
    map['networkConfig'] = networkConfig.toMap();
    map['nodeAccessConfig'] = nodeAccessConfig.toMap();
    map['nodeConfig'] = nodeConfig.toMap();
    map['osEnvironmentConfig'] = osEnvironmentConfig.toMap();
    map['proxy'] = proxy.toMap();
    map['reconciling'] = reconciling;
    map['securityConfig'] = securityConfig.toMap();
    map['state'] = state;
    map['status'] = status.toMap();
    map['storage'] = storage.toMap();
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    map['validationCheck'] = validationCheck.toMap();
    return map;
  }

  factory GetBareMetalAdminClusterResult.fromMap(Map<String, dynamic> map) {
    return GetBareMetalAdminClusterResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      bareMetalVersion: map['bareMetalVersion'] as String,
      binaryAuthorization: BinaryAuthorizationResponse.fromMap(
          (map['binaryAuthorization'] as Map).cast<String, dynamic>()),
      clusterOperations: BareMetalAdminClusterOperationsConfigResponse.fromMap(
          (map['clusterOperations'] as Map).cast<String, dynamic>()),
      controlPlane: BareMetalAdminControlPlaneConfigResponse.fromMap(
          (map['controlPlane'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      description: map['description'] as String,
      endpoint: map['endpoint'] as String,
      etag: map['etag'] as String,
      fleet:
          FleetResponse.fromMap((map['fleet'] as Map).cast<String, dynamic>()),
      loadBalancer: BareMetalAdminLoadBalancerConfigResponse.fromMap(
          (map['loadBalancer'] as Map).cast<String, dynamic>()),
      localName: map['localName'] as String,
      maintenanceConfig: BareMetalAdminMaintenanceConfigResponse.fromMap(
          (map['maintenanceConfig'] as Map).cast<String, dynamic>()),
      maintenanceStatus: BareMetalAdminMaintenanceStatusResponse.fromMap(
          (map['maintenanceStatus'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      networkConfig: BareMetalAdminNetworkConfigResponse.fromMap(
          (map['networkConfig'] as Map).cast<String, dynamic>()),
      nodeAccessConfig: BareMetalAdminNodeAccessConfigResponse.fromMap(
          (map['nodeAccessConfig'] as Map).cast<String, dynamic>()),
      nodeConfig: BareMetalAdminWorkloadNodeConfigResponse.fromMap(
          (map['nodeConfig'] as Map).cast<String, dynamic>()),
      osEnvironmentConfig: BareMetalAdminOsEnvironmentConfigResponse.fromMap(
          (map['osEnvironmentConfig'] as Map).cast<String, dynamic>()),
      proxy: BareMetalAdminProxyConfigResponse.fromMap(
          (map['proxy'] as Map).cast<String, dynamic>()),
      reconciling: map['reconciling'] as bool,
      securityConfig: BareMetalAdminSecurityConfigResponse.fromMap(
          (map['securityConfig'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      status: ResourceStatusResponse.fromMap(
          (map['status'] as Map).cast<String, dynamic>()),
      storage: BareMetalAdminStorageConfigResponse.fromMap(
          (map['storage'] as Map).cast<String, dynamic>()),
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
      validationCheck: ValidationCheckResponse.fromMap(
          (map['validationCheck'] as Map).cast<String, dynamic>()),
    );
  }
}
