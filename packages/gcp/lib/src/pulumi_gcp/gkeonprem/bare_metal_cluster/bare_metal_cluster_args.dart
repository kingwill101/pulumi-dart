// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bare_metal_cluster_binary_authorization/bare_metal_cluster_binary_authorization.dart';
import '../bare_metal_cluster_cluster_operations/bare_metal_cluster_cluster_operations.dart';
import '../bare_metal_cluster_control_plane/bare_metal_cluster_control_plane.dart';
import '../bare_metal_cluster_load_balancer/bare_metal_cluster_load_balancer.dart';
import '../bare_metal_cluster_maintenance_config/bare_metal_cluster_maintenance_config.dart';
import '../bare_metal_cluster_network_config/bare_metal_cluster_network_config.dart';
import '../bare_metal_cluster_node_access_config/bare_metal_cluster_node_access_config.dart';
import '../bare_metal_cluster_node_config/bare_metal_cluster_node_config.dart';
import '../bare_metal_cluster_os_environment_config/bare_metal_cluster_os_environment_config.dart';
import '../bare_metal_cluster_proxy/bare_metal_cluster_proxy.dart';
import '../bare_metal_cluster_security_config/bare_metal_cluster_security_config.dart';
import '../bare_metal_cluster_storage/bare_metal_cluster_storage.dart';
import '../bare_metal_cluster_upgrade_policy/bare_metal_cluster_upgrade_policy.dart';

/// The set of arguments for BareMetalCluster.
class BareMetalClusterArgs {
  /// The Admin Cluster this Bare Metal User Cluster belongs to.
  /// This is the full resource name of the Admin Cluster's hub membership.
  final Input<String> adminClusterMembership;

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
  final Input<Map<String, String>>? annotations;

  /// A human readable description of this Bare Metal User Cluster.
  final Input<String> bareMetalVersion;

  /// Binary Authorization related configurations.
  /// Structure is documented below.
  final Input<BareMetalClusterBinaryAuthorization>? binaryAuthorization;

  /// Specifies the User Cluster's observability infrastructure.
  /// Structure is documented below.
  final Input<BareMetalClusterClusterOperations>? clusterOperations;

  /// Specifies the control plane configuration.
  /// Structure is documented below.
  final Input<BareMetalClusterControlPlane> controlPlane;

  /// A human readable description of this Bare Metal User Cluster.
  final Input<String>? description;

  /// Specifies the load balancer configuration.
  /// Structure is documented below.
  final Input<BareMetalClusterLoadBalancer> loadBalancer;

  /// The location of the resource.
  final Input<String> location;

  /// Specifies the workload node configurations.
  /// Structure is documented below.
  final Input<BareMetalClusterMaintenanceConfig>? maintenanceConfig;

  /// The bare metal cluster name.
  final Input<String>? name;

  /// Network configuration.
  /// Structure is documented below.
  final Input<BareMetalClusterNetworkConfig> networkConfig;

  /// Specifies the node access related settings for the bare metal user cluster.
  /// Structure is documented below.
  final Input<BareMetalClusterNodeAccessConfig>? nodeAccessConfig;

  /// Specifies the workload node configurations.
  /// Structure is documented below.
  final Input<BareMetalClusterNodeConfig>? nodeConfig;

  /// OS environment related configurations.
  /// Structure is documented below.
  final Input<BareMetalClusterOsEnvironmentConfig>? osEnvironmentConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Specifies the cluster proxy configuration.
  /// Structure is documented below.
  final Input<BareMetalClusterProxy>? proxy;

  /// Specifies the security related settings for the Bare Metal User Cluster.
  /// Structure is documented below.
  final Input<BareMetalClusterSecurityConfig>? securityConfig;

  /// Specifies the cluster storage configuration.
  /// Structure is documented below.
  final Input<BareMetalClusterStorage> storage;

  /// The cluster upgrade policy.
  /// Structure is documented below.
  final Input<BareMetalClusterUpgradePolicy>? upgradePolicy;

  BareMetalClusterArgs({
    required this.adminClusterMembership,
    this.annotations,
    required this.bareMetalVersion,
    this.binaryAuthorization,
    this.clusterOperations,
    required this.controlPlane,
    this.description,
    required this.loadBalancer,
    required this.location,
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
    map['bareMetalVersion'] = bareMetalVersion;
    final binaryAuthorizationValue = binaryAuthorization;
    if (binaryAuthorizationValue != null) {
      map['binaryAuthorization'] = Input.mapOptionalInputValue<
              BareMetalClusterBinaryAuthorization, Map<String, dynamic>>(
          binaryAuthorizationValue, (value) => value.toMap());
    }
    final clusterOperationsValue = clusterOperations;
    if (clusterOperationsValue != null) {
      map['clusterOperations'] = Input.mapOptionalInputValue<
              BareMetalClusterClusterOperations, Map<String, dynamic>>(
          clusterOperationsValue, (value) => value.toMap());
    }
    map['controlPlane'] =
        Input.mapInputValue<BareMetalClusterControlPlane, Map<String, dynamic>>(
            controlPlane, (value) => value.toMap());
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['loadBalancer'] =
        Input.mapInputValue<BareMetalClusterLoadBalancer, Map<String, dynamic>>(
            loadBalancer, (value) => value.toMap());
    map['location'] = location;
    final maintenanceConfigValue = maintenanceConfig;
    if (maintenanceConfigValue != null) {
      map['maintenanceConfig'] = Input.mapOptionalInputValue<
              BareMetalClusterMaintenanceConfig, Map<String, dynamic>>(
          maintenanceConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['networkConfig'] = Input.mapInputValue<BareMetalClusterNetworkConfig,
        Map<String, dynamic>>(networkConfig, (value) => value.toMap());
    final nodeAccessConfigValue = nodeAccessConfig;
    if (nodeAccessConfigValue != null) {
      map['nodeAccessConfig'] = Input.mapOptionalInputValue<
              BareMetalClusterNodeAccessConfig, Map<String, dynamic>>(
          nodeAccessConfigValue, (value) => value.toMap());
    }
    final nodeConfigValue = nodeConfig;
    if (nodeConfigValue != null) {
      map['nodeConfig'] = Input.mapOptionalInputValue<
          BareMetalClusterNodeConfig,
          Map<String, dynamic>>(nodeConfigValue, (value) => value.toMap());
    }
    final osEnvironmentConfigValue = osEnvironmentConfig;
    if (osEnvironmentConfigValue != null) {
      map['osEnvironmentConfig'] = Input.mapOptionalInputValue<
              BareMetalClusterOsEnvironmentConfig, Map<String, dynamic>>(
          osEnvironmentConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final proxyValue = proxy;
    if (proxyValue != null) {
      map['proxy'] = Input.mapOptionalInputValue<BareMetalClusterProxy,
          Map<String, dynamic>>(proxyValue, (value) => value.toMap());
    }
    final securityConfigValue = securityConfig;
    if (securityConfigValue != null) {
      map['securityConfig'] = Input.mapOptionalInputValue<
          BareMetalClusterSecurityConfig,
          Map<String, dynamic>>(securityConfigValue, (value) => value.toMap());
    }
    map['storage'] =
        Input.mapInputValue<BareMetalClusterStorage, Map<String, dynamic>>(
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
      bareMetalVersion: Input.asInput<String>(map['bareMetalVersion']),
      binaryAuthorization:
          Input.asOptionalInput<BareMetalClusterBinaryAuthorization>(
              map['binaryAuthorization']),
      clusterOperations:
          Input.asOptionalInput<BareMetalClusterClusterOperations>(
              map['clusterOperations']),
      controlPlane:
          Input.asInput<BareMetalClusterControlPlane>(map['controlPlane']),
      description: Input.asOptionalInput<String>(map['description']),
      loadBalancer:
          Input.asInput<BareMetalClusterLoadBalancer>(map['loadBalancer']),
      location: Input.asInput<String>(map['location']),
      maintenanceConfig:
          Input.asOptionalInput<BareMetalClusterMaintenanceConfig>(
              map['maintenanceConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      networkConfig:
          Input.asInput<BareMetalClusterNetworkConfig>(map['networkConfig']),
      nodeAccessConfig: Input.asOptionalInput<BareMetalClusterNodeAccessConfig>(
          map['nodeAccessConfig']),
      nodeConfig:
          Input.asOptionalInput<BareMetalClusterNodeConfig>(map['nodeConfig']),
      osEnvironmentConfig:
          Input.asOptionalInput<BareMetalClusterOsEnvironmentConfig>(
              map['osEnvironmentConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      proxy: Input.asOptionalInput<BareMetalClusterProxy>(map['proxy']),
      securityConfig: Input.asOptionalInput<BareMetalClusterSecurityConfig>(
          map['securityConfig']),
      storage: Input.asInput<BareMetalClusterStorage>(map['storage']),
      upgradePolicy: Input.asOptionalInput<BareMetalClusterUpgradePolicy>(
          map['upgradePolicy']),
    );
  }
}
