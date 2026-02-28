// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_cluster_binary_authorization.dart';
import 'bare_metal_cluster_cluster_operations.dart';
import 'bare_metal_cluster_control_plane.dart';
import 'bare_metal_cluster_load_balancer.dart';
import 'bare_metal_cluster_maintenance_config.dart';
import 'bare_metal_cluster_network_config.dart';
import 'bare_metal_cluster_node_access_config.dart';
import 'bare_metal_cluster_node_config.dart';
import 'bare_metal_cluster_os_environment_config.dart';
import 'bare_metal_cluster_proxy.dart';
import 'bare_metal_cluster_security_config.dart';
import 'bare_metal_cluster_storage.dart';
import 'bare_metal_cluster_upgrade_policy.dart';

/// {@template pulumi_gkeonprem_bare_metal_cluster_bare_metal_cluster_args_doc}
/// The set of arguments for BareMetalCluster.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_bare_metal_cluster_bare_metal_cluster_args_doc}
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

  /// Creates a new [BareMetalClusterArgs].
  /// [adminClusterMembership] The Admin Cluster this Bare Metal User Cluster belongs to.
  /// [annotations] Annotations on the Bare Metal User Cluster.
  /// [bareMetalVersion] A human readable description of this Bare Metal User Cluster.
  /// [binaryAuthorization] Binary Authorization related configurations.
  /// [clusterOperations] Specifies the User Cluster's observability infrastructure.
  /// [controlPlane] Specifies the control plane configuration.
  /// [description] A human readable description of this Bare Metal User Cluster.
  /// [loadBalancer] Specifies the load balancer configuration.
  /// [location] The location of the resource.
  /// [maintenanceConfig] Specifies the workload node configurations.
  /// [name] The bare metal cluster name.
  /// [networkConfig] Network configuration.
  /// [nodeAccessConfig] Specifies the node access related settings for the bare metal user cluster.
  /// [nodeConfig] Specifies the workload node configurations.
  /// [osEnvironmentConfig] OS environment related configurations.
  /// [project] The ID of the project in which the resource belongs.
  /// [proxy] Specifies the cluster proxy configuration.
  /// [securityConfig] Specifies the security related settings for the Bare Metal User Cluster.
  /// [storage] Specifies the cluster storage configuration.
  /// [upgradePolicy] The cluster upgrade policy.
  BareMetalClusterArgs({
    required String adminClusterMembership,
    Map<String, String>? annotations,
    required String bareMetalVersion,
    BareMetalClusterBinaryAuthorization? binaryAuthorization,
    BareMetalClusterClusterOperations? clusterOperations,
    required BareMetalClusterControlPlane controlPlane,
    String? description,
    required BareMetalClusterLoadBalancer loadBalancer,
    required String location,
    BareMetalClusterMaintenanceConfig? maintenanceConfig,
    String? name,
    required BareMetalClusterNetworkConfig networkConfig,
    BareMetalClusterNodeAccessConfig? nodeAccessConfig,
    BareMetalClusterNodeConfig? nodeConfig,
    BareMetalClusterOsEnvironmentConfig? osEnvironmentConfig,
    String? project,
    BareMetalClusterProxy? proxy,
    BareMetalClusterSecurityConfig? securityConfig,
    required BareMetalClusterStorage storage,
    BareMetalClusterUpgradePolicy? upgradePolicy,
  })  : adminClusterMembership =
            pulumi.Input.asInput<String>(adminClusterMembership),
        annotations =
            pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
        bareMetalVersion = pulumi.Input.asInput<String>(bareMetalVersion),
        binaryAuthorization =
            pulumi.Input.asOptionalInput<BareMetalClusterBinaryAuthorization>(
                binaryAuthorization),
        clusterOperations =
            pulumi.Input.asOptionalInput<BareMetalClusterClusterOperations>(
                clusterOperations),
        controlPlane =
            pulumi.Input.asInput<BareMetalClusterControlPlane>(controlPlane),
        description = pulumi.Input.asOptionalInput<String>(description),
        loadBalancer =
            pulumi.Input.asInput<BareMetalClusterLoadBalancer>(loadBalancer),
        location = pulumi.Input.asInput<String>(location),
        maintenanceConfig =
            pulumi.Input.asOptionalInput<BareMetalClusterMaintenanceConfig>(
                maintenanceConfig),
        name = pulumi.Input.asOptionalInput<String>(name),
        networkConfig =
            pulumi.Input.asInput<BareMetalClusterNetworkConfig>(networkConfig),
        nodeAccessConfig =
            pulumi.Input.asOptionalInput<BareMetalClusterNodeAccessConfig>(
                nodeAccessConfig),
        nodeConfig = pulumi.Input.asOptionalInput<BareMetalClusterNodeConfig>(
            nodeConfig),
        osEnvironmentConfig =
            pulumi.Input.asOptionalInput<BareMetalClusterOsEnvironmentConfig>(
                osEnvironmentConfig),
        project = pulumi.Input.asOptionalInput<String>(project),
        proxy = pulumi.Input.asOptionalInput<BareMetalClusterProxy>(proxy),
        securityConfig =
            pulumi.Input.asOptionalInput<BareMetalClusterSecurityConfig>(
                securityConfig),
        storage = pulumi.Input.asInput<BareMetalClusterStorage>(storage),
        upgradePolicy =
            pulumi.Input.asOptionalInput<BareMetalClusterUpgradePolicy>(
                upgradePolicy);

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
      adminClusterMembership: map['adminClusterMembership'] as String,
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      bareMetalVersion: map['bareMetalVersion'] as String,
      binaryAuthorization: map['binaryAuthorization'] == null
          ? null
          : BareMetalClusterBinaryAuthorization.fromMap(
              (map['binaryAuthorization'] as Map).cast<String, dynamic>()),
      clusterOperations: map['clusterOperations'] == null
          ? null
          : BareMetalClusterClusterOperations.fromMap(
              (map['clusterOperations'] as Map).cast<String, dynamic>()),
      controlPlane: BareMetalClusterControlPlane.fromMap(
          (map['controlPlane'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      loadBalancer: BareMetalClusterLoadBalancer.fromMap(
          (map['loadBalancer'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      maintenanceConfig: map['maintenanceConfig'] == null
          ? null
          : BareMetalClusterMaintenanceConfig.fromMap(
              (map['maintenanceConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      networkConfig: BareMetalClusterNetworkConfig.fromMap(
          (map['networkConfig'] as Map).cast<String, dynamic>()),
      nodeAccessConfig: map['nodeAccessConfig'] == null
          ? null
          : BareMetalClusterNodeAccessConfig.fromMap(
              (map['nodeAccessConfig'] as Map).cast<String, dynamic>()),
      nodeConfig: map['nodeConfig'] == null
          ? null
          : BareMetalClusterNodeConfig.fromMap(
              (map['nodeConfig'] as Map).cast<String, dynamic>()),
      osEnvironmentConfig: map['osEnvironmentConfig'] == null
          ? null
          : BareMetalClusterOsEnvironmentConfig.fromMap(
              (map['osEnvironmentConfig'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      proxy: map['proxy'] == null
          ? null
          : BareMetalClusterProxy.fromMap(
              (map['proxy'] as Map).cast<String, dynamic>()),
      securityConfig: map['securityConfig'] == null
          ? null
          : BareMetalClusterSecurityConfig.fromMap(
              (map['securityConfig'] as Map).cast<String, dynamic>()),
      storage: BareMetalClusterStorage.fromMap(
          (map['storage'] as Map).cast<String, dynamic>()),
      upgradePolicy: map['upgradePolicy'] == null
          ? null
          : BareMetalClusterUpgradePolicy.fromMap(
              (map['upgradePolicy'] as Map).cast<String, dynamic>()),
    );
  }
}
