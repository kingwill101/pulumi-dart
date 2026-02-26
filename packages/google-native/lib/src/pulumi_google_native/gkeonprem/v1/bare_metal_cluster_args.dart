// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'bare_metal_cluster_operations_config.dart';
import 'bare_metal_cluster_upgrade_policy.dart';
import 'bare_metal_control_plane_config.dart';
import 'bare_metal_load_balancer_config.dart';
import 'bare_metal_maintenance_config.dart';
import 'bare_metal_network_config.dart';
import 'bare_metal_node_access_config.dart';
import 'bare_metal_os_environment_config.dart';
import 'bare_metal_proxy_config.dart';
import 'bare_metal_security_config.dart';
import 'bare_metal_storage_config.dart';
import 'bare_metal_workload_node_config.dart';
import 'binary_authorization3.dart';

/// The set of arguments for BareMetalCluster.
class BareMetalClusterArgs {
  /// The admin cluster this bare metal user cluster belongs to. This is the full resource name of the admin cluster's fleet membership.
  final Input<String> adminClusterMembership;

  /// Annotations on the bare metal user cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  final Input<Map<String, String>>? annotations;

  /// Required. User provided identifier that is used as part of the resource name; must conform to RFC-1034 and additionally restrict to lower-cased letters. This comes out roughly to: /^a-z+[a-z0-9]$/
  final Input<String> bareMetalClusterId;

  /// The Anthos clusters on bare metal version for your user cluster.
  final Input<String> bareMetalVersion;

  /// Binary Authorization related configurations.
  final Input<BinaryAuthorization3>? binaryAuthorization;

  /// Cluster operations configuration.
  final Input<BareMetalClusterOperationsConfig>? clusterOperations;

  /// Control plane configuration.
  final Input<BareMetalControlPlaneConfig> controlPlane;

  /// A human readable description of this bare metal user cluster.
  final Input<String>? description;

  /// Load balancer configuration.
  final Input<BareMetalLoadBalancerConfig> loadBalancer;
  final Input<String>? location;

  /// Maintenance configuration.
  final Input<BareMetalMaintenanceConfig>? maintenanceConfig;

  /// Immutable. The bare metal user cluster resource name.
  final Input<String>? name;

  /// Network configuration.
  final Input<BareMetalNetworkConfig> networkConfig;

  /// Node access related configurations.
  final Input<BareMetalNodeAccessConfig>? nodeAccessConfig;

  /// Workload node configuration.
  final Input<BareMetalWorkloadNodeConfig>? nodeConfig;

  /// OS environment related configurations.
  final Input<BareMetalOsEnvironmentConfig>? osEnvironmentConfig;
  final Input<String>? project;

  /// Proxy configuration.
  final Input<BareMetalProxyConfig>? proxy;

  /// Security related setting configuration.
  final Input<BareMetalSecurityConfig>? securityConfig;

  /// Storage configuration.
  final Input<BareMetalStorageConfig> storage;

  /// The cluster upgrade policy.
  final Input<BareMetalClusterUpgradePolicy>? upgradePolicy;

  BareMetalClusterArgs({
    required this.adminClusterMembership,
    this.annotations,
    required this.bareMetalClusterId,
    required this.bareMetalVersion,
    this.binaryAuthorization,
    this.clusterOperations,
    required this.controlPlane,
    this.description,
    required this.loadBalancer,
    this.location,
    this.maintenanceConfig,
    this.name,
    required this.networkConfig,
    this.nodeAccessConfig,
    this.nodeConfig,
    this.osEnvironmentConfig,
    this.project,
    this.proxy,
    this.securityConfig,
    required this.storage,
    this.upgradePolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['adminClusterMembership'] = adminClusterMembership;
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    map['bareMetalClusterId'] = bareMetalClusterId;
    map['bareMetalVersion'] = bareMetalVersion;
    final binaryAuthorizationValue = binaryAuthorization;
    if (binaryAuthorizationValue != null) {
      map['binaryAuthorization'] = Input.mapOptionalInputValue<
              BinaryAuthorization3, Map<String, dynamic>>(
          binaryAuthorizationValue, (value) => value.toMap());
    }
    final clusterOperationsValue = clusterOperations;
    if (clusterOperationsValue != null) {
      map['clusterOperations'] = Input.mapOptionalInputValue<
              BareMetalClusterOperationsConfig, Map<String, dynamic>>(
          clusterOperationsValue, (value) => value.toMap());
    }
    map['controlPlane'] =
        Input.mapInputValue<BareMetalControlPlaneConfig, Map<String, dynamic>>(
            controlPlane, (value) => value.toMap());
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['loadBalancer'] =
        Input.mapInputValue<BareMetalLoadBalancerConfig, Map<String, dynamic>>(
            loadBalancer, (value) => value.toMap());
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final maintenanceConfigValue = maintenanceConfig;
    if (maintenanceConfigValue != null) {
      map['maintenanceConfig'] = Input.mapOptionalInputValue<
              BareMetalMaintenanceConfig, Map<String, dynamic>>(
          maintenanceConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['networkConfig'] =
        Input.mapInputValue<BareMetalNetworkConfig, Map<String, dynamic>>(
            networkConfig, (value) => value.toMap());
    final nodeAccessConfigValue = nodeAccessConfig;
    if (nodeAccessConfigValue != null) {
      map['nodeAccessConfig'] = Input.mapOptionalInputValue<
              BareMetalNodeAccessConfig, Map<String, dynamic>>(
          nodeAccessConfigValue, (value) => value.toMap());
    }
    final nodeConfigValue = nodeConfig;
    if (nodeConfigValue != null) {
      map['nodeConfig'] = Input.mapOptionalInputValue<
          BareMetalWorkloadNodeConfig,
          Map<String, dynamic>>(nodeConfigValue, (value) => value.toMap());
    }
    final osEnvironmentConfigValue = osEnvironmentConfig;
    if (osEnvironmentConfigValue != null) {
      map['osEnvironmentConfig'] = Input.mapOptionalInputValue<
              BareMetalOsEnvironmentConfig, Map<String, dynamic>>(
          osEnvironmentConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final proxyValue = proxy;
    if (proxyValue != null) {
      map['proxy'] = Input.mapOptionalInputValue<BareMetalProxyConfig,
          Map<String, dynamic>>(proxyValue, (value) => value.toMap());
    }
    final securityConfigValue = securityConfig;
    if (securityConfigValue != null) {
      map['securityConfig'] = Input.mapOptionalInputValue<
          BareMetalSecurityConfig,
          Map<String, dynamic>>(securityConfigValue, (value) => value.toMap());
    }
    map['storage'] =
        Input.mapInputValue<BareMetalStorageConfig, Map<String, dynamic>>(
            storage, (value) => value.toMap());
    final upgradePolicyValue = upgradePolicy;
    if (upgradePolicyValue != null) {
      map['upgradePolicy'] = Input.mapOptionalInputValue<
          BareMetalClusterUpgradePolicy,
          Map<String, dynamic>>(upgradePolicyValue, (value) => value.toMap());
    }
    return map;
  }

  factory BareMetalClusterArgs.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterArgs(
      adminClusterMembership:
          Input.asInput<String>(map['adminClusterMembership']),
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      bareMetalClusterId: Input.asInput<String>(map['bareMetalClusterId']),
      bareMetalVersion: Input.asInput<String>(map['bareMetalVersion']),
      binaryAuthorization: Input.asOptionalInput<BinaryAuthorization3>(
          map['binaryAuthorization']),
      clusterOperations:
          Input.asOptionalInput<BareMetalClusterOperationsConfig>(
              map['clusterOperations']),
      controlPlane:
          Input.asInput<BareMetalControlPlaneConfig>(map['controlPlane']),
      description: Input.asOptionalInput<String>(map['description']),
      loadBalancer:
          Input.asInput<BareMetalLoadBalancerConfig>(map['loadBalancer']),
      location: Input.asOptionalInput<String>(map['location']),
      maintenanceConfig: Input.asOptionalInput<BareMetalMaintenanceConfig>(
          map['maintenanceConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      networkConfig:
          Input.asInput<BareMetalNetworkConfig>(map['networkConfig']),
      nodeAccessConfig: Input.asOptionalInput<BareMetalNodeAccessConfig>(
          map['nodeAccessConfig']),
      nodeConfig:
          Input.asOptionalInput<BareMetalWorkloadNodeConfig>(map['nodeConfig']),
      osEnvironmentConfig: Input.asOptionalInput<BareMetalOsEnvironmentConfig>(
          map['osEnvironmentConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      proxy: Input.asOptionalInput<BareMetalProxyConfig>(map['proxy']),
      securityConfig:
          Input.asOptionalInput<BareMetalSecurityConfig>(map['securityConfig']),
      storage: Input.asInput<BareMetalStorageConfig>(map['storage']),
      upgradePolicy: Input.asOptionalInput<BareMetalClusterUpgradePolicy>(
          map['upgradePolicy']),
    );
  }
}
