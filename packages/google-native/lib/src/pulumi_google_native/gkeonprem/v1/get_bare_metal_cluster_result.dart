// ignore_for_file: unused_element, unnecessary_cast

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
import 'binary_authorization_response_gkeonprem_v1.dart';
import 'fleet_response_gkeonprem_v1.dart';
import 'resource_status_response_gkeonprem_v1.dart';
import 'validation_check_response.dart';

/// Result data returned by getBareMetalCluster.
class GetBareMetalClusterResult {
  /// The admin cluster this bare metal user cluster belongs to. This is the full resource name of the admin cluster's fleet membership.
  final String adminClusterMembership;

  /// The resource name of the bare metal admin cluster managing this user cluster.
  final String adminClusterName;

  /// Annotations on the bare metal user cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  final Map<String, String> annotations;

  /// The Anthos clusters on bare metal version for your user cluster.
  final String bareMetalVersion;

  /// Binary Authorization related configurations.
  final BinaryAuthorizationResponseGkeonpremV1 binaryAuthorization;

  /// Cluster operations configuration.
  final BareMetalClusterOperationsConfigResponse clusterOperations;

  /// Control plane configuration.
  final BareMetalControlPlaneConfigResponse controlPlane;

  /// The time when the bare metal user cluster was created.
  final String createTime;

  /// The time when the bare metal user cluster was deleted. If the resource is not deleted, this must be empty
  final String deleteTime;

  /// A human readable description of this bare metal user cluster.
  final String description;

  /// The IP address of the bare metal user cluster's API server.
  final String endpoint;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  final String etag;

  /// Fleet configuration for the cluster.
  final FleetResponseGkeonpremV1 fleet;

  /// Load balancer configuration.
  final BareMetalLoadBalancerConfigResponse loadBalancer;

  /// The object name of the bare metal user cluster custom resource on the associated admin cluster. This field is used to support conflicting names when enrolling existing clusters to the API. When used as a part of cluster enrollment, this field will differ from the name in the resource name. For new clusters, this field will match the user provided cluster name and be visible in the last component of the resource name. It is not modifiable. When the local name and cluster name differ, the local name is used in the admin cluster controller logs. You use the cluster name when accessing the cluster using bmctl and kubectl.
  final String localName;

  /// Maintenance configuration.
  final BareMetalMaintenanceConfigResponse maintenanceConfig;

  /// Status of on-going maintenance tasks.
  final BareMetalMaintenanceStatusResponse maintenanceStatus;

  /// Immutable. The bare metal user cluster resource name.
  final String name;

  /// Network configuration.
  final BareMetalNetworkConfigResponse networkConfig;

  /// Node access related configurations.
  final BareMetalNodeAccessConfigResponse nodeAccessConfig;

  /// Workload node configuration.
  final BareMetalWorkloadNodeConfigResponse nodeConfig;

  /// OS environment related configurations.
  final BareMetalOsEnvironmentConfigResponse osEnvironmentConfig;

  /// Proxy configuration.
  final BareMetalProxyConfigResponse proxy;

  /// If set, there are currently changes in flight to the bare metal user cluster.
  final bool reconciling;

  /// Security related setting configuration.
  final BareMetalSecurityConfigResponse securityConfig;

  /// The current state of the bare metal user cluster.
  final String state;

  /// Detailed cluster status.
  final ResourceStatusResponseGkeonpremV1 status;

  /// Storage configuration.
  final BareMetalStorageConfigResponse storage;

  /// The unique identifier of the bare metal user cluster.
  final String uid;

  /// The time when the bare metal user cluster was last updated.
  final String updateTime;

  /// The cluster upgrade policy.
  final BareMetalClusterUpgradePolicyResponse upgradePolicy;

  /// The result of the preflight check.
  final ValidationCheckResponse validationCheck;

  GetBareMetalClusterResult({
    required this.adminClusterMembership,
    required this.adminClusterName,
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
    required this.upgradePolicy,
    required this.validationCheck,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['adminClusterMembership'] = adminClusterMembership;
    map['adminClusterName'] = adminClusterName;
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
    map['upgradePolicy'] = upgradePolicy.toMap();
    map['validationCheck'] = validationCheck.toMap();
    return map;
  }

  factory GetBareMetalClusterResult.fromMap(Map<String, dynamic> map) {
    return GetBareMetalClusterResult(
      adminClusterMembership: map['adminClusterMembership'] as String,
      adminClusterName: map['adminClusterName'] as String,
      annotations: (map['annotations'] as Map).cast<String, String>(),
      bareMetalVersion: map['bareMetalVersion'] as String,
      binaryAuthorization: BinaryAuthorizationResponseGkeonpremV1.fromMap(
          (map['binaryAuthorization'] as Map).cast<String, dynamic>()),
      clusterOperations: BareMetalClusterOperationsConfigResponse.fromMap(
          (map['clusterOperations'] as Map).cast<String, dynamic>()),
      controlPlane: BareMetalControlPlaneConfigResponse.fromMap(
          (map['controlPlane'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      description: map['description'] as String,
      endpoint: map['endpoint'] as String,
      etag: map['etag'] as String,
      fleet: FleetResponseGkeonpremV1.fromMap(
          (map['fleet'] as Map).cast<String, dynamic>()),
      loadBalancer: BareMetalLoadBalancerConfigResponse.fromMap(
          (map['loadBalancer'] as Map).cast<String, dynamic>()),
      localName: map['localName'] as String,
      maintenanceConfig: BareMetalMaintenanceConfigResponse.fromMap(
          (map['maintenanceConfig'] as Map).cast<String, dynamic>()),
      maintenanceStatus: BareMetalMaintenanceStatusResponse.fromMap(
          (map['maintenanceStatus'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      networkConfig: BareMetalNetworkConfigResponse.fromMap(
          (map['networkConfig'] as Map).cast<String, dynamic>()),
      nodeAccessConfig: BareMetalNodeAccessConfigResponse.fromMap(
          (map['nodeAccessConfig'] as Map).cast<String, dynamic>()),
      nodeConfig: BareMetalWorkloadNodeConfigResponse.fromMap(
          (map['nodeConfig'] as Map).cast<String, dynamic>()),
      osEnvironmentConfig: BareMetalOsEnvironmentConfigResponse.fromMap(
          (map['osEnvironmentConfig'] as Map).cast<String, dynamic>()),
      proxy: BareMetalProxyConfigResponse.fromMap(
          (map['proxy'] as Map).cast<String, dynamic>()),
      reconciling: map['reconciling'] as bool,
      securityConfig: BareMetalSecurityConfigResponse.fromMap(
          (map['securityConfig'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      status: ResourceStatusResponseGkeonpremV1.fromMap(
          (map['status'] as Map).cast<String, dynamic>()),
      storage: BareMetalStorageConfigResponse.fromMap(
          (map['storage'] as Map).cast<String, dynamic>()),
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
      upgradePolicy: BareMetalClusterUpgradePolicyResponse.fromMap(
          (map['upgradePolicy'] as Map).cast<String, dynamic>()),
      validationCheck: ValidationCheckResponse.fromMap(
          (map['validationCheck'] as Map).cast<String, dynamic>()),
    );
  }
}
