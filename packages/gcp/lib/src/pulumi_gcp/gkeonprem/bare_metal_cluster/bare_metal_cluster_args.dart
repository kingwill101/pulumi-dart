// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
  final pulumi.Input<String> adminClusterMembership;

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
  final pulumi.Input<Map<String, String>>? annotations;

  /// A human readable description of this Bare Metal User Cluster.
  final pulumi.Input<String> bareMetalVersion;

  /// Binary Authorization related configurations.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterBinaryAuthorization>? binaryAuthorization;

  /// Specifies the User Cluster's observability infrastructure.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterClusterOperations>? clusterOperations;

  /// Specifies the control plane configuration.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterControlPlane> controlPlane;

  /// A human readable description of this Bare Metal User Cluster.
  final pulumi.Input<String>? description;

  /// Specifies the load balancer configuration.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterLoadBalancer> loadBalancer;

  /// The location of the resource.
  final pulumi.Input<String> location;

  /// Specifies the workload node configurations.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterMaintenanceConfig>? maintenanceConfig;

  /// The bare metal cluster name.
  final pulumi.Input<String>? name;

  /// Network configuration.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterNetworkConfig> networkConfig;

  /// Specifies the node access related settings for the bare metal user cluster.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterNodeAccessConfig>? nodeAccessConfig;

  /// Specifies the workload node configurations.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterNodeConfig>? nodeConfig;

  /// OS environment related configurations.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterOsEnvironmentConfig>? osEnvironmentConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Specifies the cluster proxy configuration.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterProxy>? proxy;

  /// Specifies the security related settings for the Bare Metal User Cluster.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterSecurityConfig>? securityConfig;

  /// Specifies the cluster storage configuration.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterStorage> storage;

  /// The cluster upgrade policy.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterUpgradePolicy>? upgradePolicy;

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
      map['binaryAuthorization'] = pulumi.Input.mapOptionalInputValue<
              BareMetalClusterBinaryAuthorization, Map<String, dynamic>>(
          binaryAuthorizationValue, (value) => value.toMap());
    }
    final clusterOperationsValue = clusterOperations;
    if (clusterOperationsValue != null) {
      map['clusterOperations'] = pulumi.Input.mapOptionalInputValue<
              BareMetalClusterClusterOperations, Map<String, dynamic>>(
          clusterOperationsValue, (value) => value.toMap());
    }
    map['controlPlane'] = pulumi.Input.mapInputValue<
        BareMetalClusterControlPlane,
        Map<String, dynamic>>(controlPlane, (value) => value.toMap());
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['loadBalancer'] = pulumi.Input.mapInputValue<
        BareMetalClusterLoadBalancer,
        Map<String, dynamic>>(loadBalancer, (value) => value.toMap());
    map['location'] = location;
    final maintenanceConfigValue = maintenanceConfig;
    if (maintenanceConfigValue != null) {
      map['maintenanceConfig'] = pulumi.Input.mapOptionalInputValue<
              BareMetalClusterMaintenanceConfig, Map<String, dynamic>>(
          maintenanceConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['networkConfig'] = pulumi.Input.mapInputValue<
        BareMetalClusterNetworkConfig,
        Map<String, dynamic>>(networkConfig, (value) => value.toMap());
    final nodeAccessConfigValue = nodeAccessConfig;
    if (nodeAccessConfigValue != null) {
      map['nodeAccessConfig'] = pulumi.Input.mapOptionalInputValue<
              BareMetalClusterNodeAccessConfig, Map<String, dynamic>>(
          nodeAccessConfigValue, (value) => value.toMap());
    }
    final nodeConfigValue = nodeConfig;
    if (nodeConfigValue != null) {
      map['nodeConfig'] = pulumi.Input.mapOptionalInputValue<
          BareMetalClusterNodeConfig,
          Map<String, dynamic>>(nodeConfigValue, (value) => value.toMap());
    }
    final osEnvironmentConfigValue = osEnvironmentConfig;
    if (osEnvironmentConfigValue != null) {
      map['osEnvironmentConfig'] = pulumi.Input.mapOptionalInputValue<
              BareMetalClusterOsEnvironmentConfig, Map<String, dynamic>>(
          osEnvironmentConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final proxyValue = proxy;
    if (proxyValue != null) {
      map['proxy'] = pulumi.Input.mapOptionalInputValue<BareMetalClusterProxy,
          Map<String, dynamic>>(proxyValue, (value) => value.toMap());
    }
    final securityConfigValue = securityConfig;
    if (securityConfigValue != null) {
      map['securityConfig'] = pulumi.Input.mapOptionalInputValue<
          BareMetalClusterSecurityConfig,
          Map<String, dynamic>>(securityConfigValue, (value) => value.toMap());
    }
    map['storage'] = pulumi.Input.mapInputValue<BareMetalClusterStorage,
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
      bareMetalVersion: pulumi.Input.asInput<String>(map['bareMetalVersion']),
      binaryAuthorization:
          pulumi.Input.asOptionalInput<BareMetalClusterBinaryAuthorization>(
              map['binaryAuthorization']),
      clusterOperations:
          pulumi.Input.asOptionalInput<BareMetalClusterClusterOperations>(
              map['clusterOperations']),
      controlPlane: pulumi.Input.asInput<BareMetalClusterControlPlane>(
          map['controlPlane']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      loadBalancer: pulumi.Input.asInput<BareMetalClusterLoadBalancer>(
          map['loadBalancer']),
      location: pulumi.Input.asInput<String>(map['location']),
      maintenanceConfig:
          pulumi.Input.asOptionalInput<BareMetalClusterMaintenanceConfig>(
              map['maintenanceConfig']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      networkConfig: pulumi.Input.asInput<BareMetalClusterNetworkConfig>(
          map['networkConfig']),
      nodeAccessConfig:
          pulumi.Input.asOptionalInput<BareMetalClusterNodeAccessConfig>(
              map['nodeAccessConfig']),
      nodeConfig: pulumi.Input.asOptionalInput<BareMetalClusterNodeConfig>(
          map['nodeConfig']),
      osEnvironmentConfig:
          pulumi.Input.asOptionalInput<BareMetalClusterOsEnvironmentConfig>(
              map['osEnvironmentConfig']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      proxy: pulumi.Input.asOptionalInput<BareMetalClusterProxy>(map['proxy']),
      securityConfig:
          pulumi.Input.asOptionalInput<BareMetalClusterSecurityConfig>(
              map['securityConfig']),
      storage: pulumi.Input.asInput<BareMetalClusterStorage>(map['storage']),
      upgradePolicy:
          pulumi.Input.asOptionalInput<BareMetalClusterUpgradePolicy>(
              map['upgradePolicy']),
    );
  }
}
