// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'bare_metal_admin_cluster_operations_config.dart';
import 'bare_metal_admin_control_plane_config.dart';
import 'bare_metal_admin_load_balancer_config.dart';
import 'bare_metal_admin_maintenance_config.dart';
import 'bare_metal_admin_network_config.dart';
import 'bare_metal_admin_node_access_config.dart';
import 'bare_metal_admin_os_environment_config.dart';
import 'bare_metal_admin_proxy_config.dart';
import 'bare_metal_admin_security_config.dart';
import 'bare_metal_admin_storage_config.dart';
import 'bare_metal_admin_workload_node_config.dart';
import 'binary_authorization3.dart';

/// The set of arguments for BareMetalAdminCluster.
class BareMetalAdminClusterArgs {
  /// Annotations on the bare metal admin cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  final Input<Map<String, String>>? annotations;

  /// Required. User provided identifier that is used as part of the resource name; must conform to RFC-1034 and additionally restrict to lower-cased letters. This comes out roughly to: /^a-z+[a-z0-9]$/
  final Input<String> bareMetalAdminClusterId;

  /// The Anthos clusters on bare metal version for the bare metal admin cluster.
  final Input<String>? bareMetalVersion;

  /// Binary Authorization related configurations.
  final Input<BinaryAuthorization3>? binaryAuthorization;

  /// Cluster operations configuration.
  final Input<BareMetalAdminClusterOperationsConfig>? clusterOperations;

  /// Control plane configuration.
  final Input<BareMetalAdminControlPlaneConfig>? controlPlane;

  /// A human readable description of this bare metal admin cluster.
  final Input<String>? description;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  final Input<String>? etag;

  /// Load balancer configuration.
  final Input<BareMetalAdminLoadBalancerConfig>? loadBalancer;
  final Input<String>? location;

  /// Maintenance configuration.
  final Input<BareMetalAdminMaintenanceConfig>? maintenanceConfig;

  /// Immutable. The bare metal admin cluster resource name.
  final Input<String>? name;

  /// Network configuration.
  final Input<BareMetalAdminNetworkConfig>? networkConfig;

  /// Node access related configurations.
  final Input<BareMetalAdminNodeAccessConfig>? nodeAccessConfig;

  /// Workload node configuration.
  final Input<BareMetalAdminWorkloadNodeConfig>? nodeConfig;

  /// OS environment related configurations.
  final Input<BareMetalAdminOsEnvironmentConfig>? osEnvironmentConfig;
  final Input<String>? project;

  /// Proxy configuration.
  final Input<BareMetalAdminProxyConfig>? proxy;

  /// Security related configuration.
  final Input<BareMetalAdminSecurityConfig>? securityConfig;

  /// Storage configuration.
  final Input<BareMetalAdminStorageConfig>? storage;

  BareMetalAdminClusterArgs({
    this.annotations,
    required this.bareMetalAdminClusterId,
    this.bareMetalVersion,
    this.binaryAuthorization,
    this.clusterOperations,
    this.controlPlane,
    this.description,
    this.etag,
    this.loadBalancer,
    this.location,
    this.maintenanceConfig,
    this.name,
    this.networkConfig,
    this.nodeAccessConfig,
    this.nodeConfig,
    this.osEnvironmentConfig,
    this.project,
    this.proxy,
    this.securityConfig,
    this.storage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    map['bareMetalAdminClusterId'] = bareMetalAdminClusterId;
    final bareMetalVersionValue = bareMetalVersion;
    if (bareMetalVersionValue != null) {
      map['bareMetalVersion'] = bareMetalVersionValue;
    }
    final binaryAuthorizationValue = binaryAuthorization;
    if (binaryAuthorizationValue != null) {
      map['binaryAuthorization'] = Input.mapOptionalInputValue<
              BinaryAuthorization3, Map<String, dynamic>>(
          binaryAuthorizationValue, (value) => value.toMap());
    }
    final clusterOperationsValue = clusterOperations;
    if (clusterOperationsValue != null) {
      map['clusterOperations'] = Input.mapOptionalInputValue<
              BareMetalAdminClusterOperationsConfig, Map<String, dynamic>>(
          clusterOperationsValue, (value) => value.toMap());
    }
    final controlPlaneValue = controlPlane;
    if (controlPlaneValue != null) {
      map['controlPlane'] = Input.mapOptionalInputValue<
          BareMetalAdminControlPlaneConfig,
          Map<String, dynamic>>(controlPlaneValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final loadBalancerValue = loadBalancer;
    if (loadBalancerValue != null) {
      map['loadBalancer'] = Input.mapOptionalInputValue<
          BareMetalAdminLoadBalancerConfig,
          Map<String, dynamic>>(loadBalancerValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final maintenanceConfigValue = maintenanceConfig;
    if (maintenanceConfigValue != null) {
      map['maintenanceConfig'] = Input.mapOptionalInputValue<
              BareMetalAdminMaintenanceConfig, Map<String, dynamic>>(
          maintenanceConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] = Input.mapOptionalInputValue<
          BareMetalAdminNetworkConfig,
          Map<String, dynamic>>(networkConfigValue, (value) => value.toMap());
    }
    final nodeAccessConfigValue = nodeAccessConfig;
    if (nodeAccessConfigValue != null) {
      map['nodeAccessConfig'] = Input.mapOptionalInputValue<
              BareMetalAdminNodeAccessConfig, Map<String, dynamic>>(
          nodeAccessConfigValue, (value) => value.toMap());
    }
    final nodeConfigValue = nodeConfig;
    if (nodeConfigValue != null) {
      map['nodeConfig'] = Input.mapOptionalInputValue<
          BareMetalAdminWorkloadNodeConfig,
          Map<String, dynamic>>(nodeConfigValue, (value) => value.toMap());
    }
    final osEnvironmentConfigValue = osEnvironmentConfig;
    if (osEnvironmentConfigValue != null) {
      map['osEnvironmentConfig'] = Input.mapOptionalInputValue<
              BareMetalAdminOsEnvironmentConfig, Map<String, dynamic>>(
          osEnvironmentConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final proxyValue = proxy;
    if (proxyValue != null) {
      map['proxy'] = Input.mapOptionalInputValue<BareMetalAdminProxyConfig,
          Map<String, dynamic>>(proxyValue, (value) => value.toMap());
    }
    final securityConfigValue = securityConfig;
    if (securityConfigValue != null) {
      map['securityConfig'] = Input.mapOptionalInputValue<
          BareMetalAdminSecurityConfig,
          Map<String, dynamic>>(securityConfigValue, (value) => value.toMap());
    }
    final storageValue = storage;
    if (storageValue != null) {
      map['storage'] = Input.mapOptionalInputValue<BareMetalAdminStorageConfig,
          Map<String, dynamic>>(storageValue, (value) => value.toMap());
    }
    return map;
  }

  factory BareMetalAdminClusterArgs.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      bareMetalAdminClusterId:
          Input.asInput<String>(map['bareMetalAdminClusterId']),
      bareMetalVersion: Input.asOptionalInput<String>(map['bareMetalVersion']),
      binaryAuthorization: Input.asOptionalInput<BinaryAuthorization3>(
          map['binaryAuthorization']),
      clusterOperations:
          Input.asOptionalInput<BareMetalAdminClusterOperationsConfig>(
              map['clusterOperations']),
      controlPlane: Input.asOptionalInput<BareMetalAdminControlPlaneConfig>(
          map['controlPlane']),
      description: Input.asOptionalInput<String>(map['description']),
      etag: Input.asOptionalInput<String>(map['etag']),
      loadBalancer: Input.asOptionalInput<BareMetalAdminLoadBalancerConfig>(
          map['loadBalancer']),
      location: Input.asOptionalInput<String>(map['location']),
      maintenanceConfig: Input.asOptionalInput<BareMetalAdminMaintenanceConfig>(
          map['maintenanceConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      networkConfig: Input.asOptionalInput<BareMetalAdminNetworkConfig>(
          map['networkConfig']),
      nodeAccessConfig: Input.asOptionalInput<BareMetalAdminNodeAccessConfig>(
          map['nodeAccessConfig']),
      nodeConfig: Input.asOptionalInput<BareMetalAdminWorkloadNodeConfig>(
          map['nodeConfig']),
      osEnvironmentConfig:
          Input.asOptionalInput<BareMetalAdminOsEnvironmentConfig>(
              map['osEnvironmentConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      proxy: Input.asOptionalInput<BareMetalAdminProxyConfig>(map['proxy']),
      securityConfig: Input.asOptionalInput<BareMetalAdminSecurityConfig>(
          map['securityConfig']),
      storage:
          Input.asOptionalInput<BareMetalAdminStorageConfig>(map['storage']),
    );
  }
}
