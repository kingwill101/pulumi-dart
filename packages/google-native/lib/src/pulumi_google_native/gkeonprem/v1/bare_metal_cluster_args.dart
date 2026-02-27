// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
import 'binary_authorization_gkeonprem_v1.dart';

/// The set of arguments for BareMetalCluster.
class BareMetalClusterArgs {
  /// The admin cluster this bare metal user cluster belongs to. This is the full resource name of the admin cluster's fleet membership.
  final pulumi.Input<String> adminClusterMembership;

  /// Annotations on the bare metal user cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Required. User provided identifier that is used as part of the resource name; must conform to RFC-1034 and additionally restrict to lower-cased letters. This comes out roughly to: /^a-z+[a-z0-9]$/
  final pulumi.Input<String> bareMetalClusterId;

  /// The Anthos clusters on bare metal version for your user cluster.
  final pulumi.Input<String> bareMetalVersion;

  /// Binary Authorization related configurations.
  final pulumi.Input<BinaryAuthorizationGkeonpremV1>? binaryAuthorization;

  /// Cluster operations configuration.
  final pulumi.Input<BareMetalClusterOperationsConfig>? clusterOperations;

  /// Control plane configuration.
  final pulumi.Input<BareMetalControlPlaneConfig> controlPlane;

  /// A human readable description of this bare metal user cluster.
  final pulumi.Input<String>? description;

  /// Load balancer configuration.
  final pulumi.Input<BareMetalLoadBalancerConfig> loadBalancer;
  final pulumi.Input<String>? location;

  /// Maintenance configuration.
  final pulumi.Input<BareMetalMaintenanceConfig>? maintenanceConfig;

  /// Immutable. The bare metal user cluster resource name.
  final pulumi.Input<String>? name;

  /// Network configuration.
  final pulumi.Input<BareMetalNetworkConfig> networkConfig;

  /// Node access related configurations.
  final pulumi.Input<BareMetalNodeAccessConfig>? nodeAccessConfig;

  /// Workload node configuration.
  final pulumi.Input<BareMetalWorkloadNodeConfig>? nodeConfig;

  /// OS environment related configurations.
  final pulumi.Input<BareMetalOsEnvironmentConfig>? osEnvironmentConfig;
  final pulumi.Input<String>? project;

  /// Proxy configuration.
  final pulumi.Input<BareMetalProxyConfig>? proxy;

  /// Security related setting configuration.
  final pulumi.Input<BareMetalSecurityConfig>? securityConfig;

  /// Storage configuration.
  final pulumi.Input<BareMetalStorageConfig> storage;

  /// The cluster upgrade policy.
  final pulumi.Input<BareMetalClusterUpgradePolicy>? upgradePolicy;

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
      map['binaryAuthorization'] = pulumi.Input.mapOptionalInputValue<
              BinaryAuthorizationGkeonpremV1, Map<String, dynamic>>(
          binaryAuthorizationValue, (value) => value.toMap());
    }
    final clusterOperationsValue = clusterOperations;
    if (clusterOperationsValue != null) {
      map['clusterOperations'] = pulumi.Input.mapOptionalInputValue<
              BareMetalClusterOperationsConfig, Map<String, dynamic>>(
          clusterOperationsValue, (value) => value.toMap());
    }
    map['controlPlane'] = pulumi.Input.mapInputValue<
        BareMetalControlPlaneConfig,
        Map<String, dynamic>>(controlPlane, (value) => value.toMap());
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['loadBalancer'] = pulumi.Input.mapInputValue<
        BareMetalLoadBalancerConfig,
        Map<String, dynamic>>(loadBalancer, (value) => value.toMap());
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final maintenanceConfigValue = maintenanceConfig;
    if (maintenanceConfigValue != null) {
      map['maintenanceConfig'] = pulumi.Input.mapOptionalInputValue<
              BareMetalMaintenanceConfig, Map<String, dynamic>>(
          maintenanceConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['networkConfig'] = pulumi.Input.mapInputValue<BareMetalNetworkConfig,
        Map<String, dynamic>>(networkConfig, (value) => value.toMap());
    final nodeAccessConfigValue = nodeAccessConfig;
    if (nodeAccessConfigValue != null) {
      map['nodeAccessConfig'] = pulumi.Input.mapOptionalInputValue<
              BareMetalNodeAccessConfig, Map<String, dynamic>>(
          nodeAccessConfigValue, (value) => value.toMap());
    }
    final nodeConfigValue = nodeConfig;
    if (nodeConfigValue != null) {
      map['nodeConfig'] = pulumi.Input.mapOptionalInputValue<
          BareMetalWorkloadNodeConfig,
          Map<String, dynamic>>(nodeConfigValue, (value) => value.toMap());
    }
    final osEnvironmentConfigValue = osEnvironmentConfig;
    if (osEnvironmentConfigValue != null) {
      map['osEnvironmentConfig'] = pulumi.Input.mapOptionalInputValue<
              BareMetalOsEnvironmentConfig, Map<String, dynamic>>(
          osEnvironmentConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final proxyValue = proxy;
    if (proxyValue != null) {
      map['proxy'] = pulumi.Input.mapOptionalInputValue<BareMetalProxyConfig,
          Map<String, dynamic>>(proxyValue, (value) => value.toMap());
    }
    final securityConfigValue = securityConfig;
    if (securityConfigValue != null) {
      map['securityConfig'] = pulumi.Input.mapOptionalInputValue<
          BareMetalSecurityConfig,
          Map<String, dynamic>>(securityConfigValue, (value) => value.toMap());
    }
    map['storage'] = pulumi.Input.mapInputValue<BareMetalStorageConfig,
        Map<String, dynamic>>(storage, (value) => value.toMap());
    final upgradePolicyValue = upgradePolicy;
    if (upgradePolicyValue != null) {
      map['upgradePolicy'] = pulumi.Input.mapOptionalInputValue<
          BareMetalClusterUpgradePolicy,
          Map<String, dynamic>>(upgradePolicyValue, (value) => value.toMap());
    }
    return map;
  }

  factory BareMetalClusterArgs.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterArgs(
      adminClusterMembership:
          pulumi.Input.asInput<String>(map['adminClusterMembership']),
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      bareMetalClusterId:
          pulumi.Input.asInput<String>(map['bareMetalClusterId']),
      bareMetalVersion: pulumi.Input.asInput<String>(map['bareMetalVersion']),
      binaryAuthorization:
          pulumi.Input.asOptionalInput<BinaryAuthorizationGkeonpremV1>(
              map['binaryAuthorization']),
      clusterOperations:
          pulumi.Input.asOptionalInput<BareMetalClusterOperationsConfig>(
              map['clusterOperations']),
      controlPlane: pulumi.Input.asInput<BareMetalControlPlaneConfig>(
          map['controlPlane']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      loadBalancer: pulumi.Input.asInput<BareMetalLoadBalancerConfig>(
          map['loadBalancer']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      maintenanceConfig:
          pulumi.Input.asOptionalInput<BareMetalMaintenanceConfig>(
              map['maintenanceConfig']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      networkConfig:
          pulumi.Input.asInput<BareMetalNetworkConfig>(map['networkConfig']),
      nodeAccessConfig: pulumi.Input.asOptionalInput<BareMetalNodeAccessConfig>(
          map['nodeAccessConfig']),
      nodeConfig: pulumi.Input.asOptionalInput<BareMetalWorkloadNodeConfig>(
          map['nodeConfig']),
      osEnvironmentConfig:
          pulumi.Input.asOptionalInput<BareMetalOsEnvironmentConfig>(
              map['osEnvironmentConfig']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      proxy: pulumi.Input.asOptionalInput<BareMetalProxyConfig>(map['proxy']),
      securityConfig: pulumi.Input.asOptionalInput<BareMetalSecurityConfig>(
          map['securityConfig']),
      storage: pulumi.Input.asInput<BareMetalStorageConfig>(map['storage']),
      upgradePolicy:
          pulumi.Input.asOptionalInput<BareMetalClusterUpgradePolicy>(
              map['upgradePolicy']),
    );
  }
}
