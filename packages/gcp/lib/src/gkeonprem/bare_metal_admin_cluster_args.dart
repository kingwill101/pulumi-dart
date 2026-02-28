// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_admin_cluster_cluster_operations.dart';
import 'bare_metal_admin_cluster_control_plane.dart';
import 'bare_metal_admin_cluster_load_balancer.dart';
import 'bare_metal_admin_cluster_maintenance_config.dart';
import 'bare_metal_admin_cluster_network_config.dart';
import 'bare_metal_admin_cluster_node_access_config.dart';
import 'bare_metal_admin_cluster_node_config.dart';
import 'bare_metal_admin_cluster_proxy.dart';
import 'bare_metal_admin_cluster_security_config.dart';
import 'bare_metal_admin_cluster_storage.dart';

/// {@template pulumi_gkeonprem_bare_metal_admin_cluster_bare_metal_admin_cluster_args_doc}
/// The set of arguments for BareMetalAdminCluster.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_bare_metal_admin_cluster_bare_metal_admin_cluster_args_doc}
class BareMetalAdminClusterArgs {
  /// Annotations on the Bare Metal Admin Cluster.
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

  /// A human readable description of this Bare Metal Admin Cluster.
  final pulumi.Input<String>? bareMetalVersion;

  /// Specifies the Admin Cluster's observability infrastructure.
  /// Structure is documented below.
  final pulumi.Input<BareMetalAdminClusterClusterOperations>? clusterOperations;

  /// Specifies the control plane configuration.
  /// Structure is documented below.
  final pulumi.Input<BareMetalAdminClusterControlPlane>? controlPlane;

  /// A human readable description of this Bare Metal Admin Cluster.
  final pulumi.Input<String>? description;

  /// Specifies the load balancer configuration.
  /// Structure is documented below.
  final pulumi.Input<BareMetalAdminClusterLoadBalancer>? loadBalancer;

  /// The location of the resource.
  final pulumi.Input<String> location;

  /// Specifies the workload node configurations.
  /// Structure is documented below.
  final pulumi.Input<BareMetalAdminClusterMaintenanceConfig>? maintenanceConfig;

  /// The bare metal admin cluster name.
  final pulumi.Input<String>? name;

  /// Network configuration.
  /// Structure is documented below.
  final pulumi.Input<BareMetalAdminClusterNetworkConfig>? networkConfig;

  /// Specifies the node access related settings for the bare metal user cluster.
  /// Structure is documented below.
  final pulumi.Input<BareMetalAdminClusterNodeAccessConfig>? nodeAccessConfig;

  /// Specifies the workload node configurations.
  /// Structure is documented below.
  final pulumi.Input<BareMetalAdminClusterNodeConfig>? nodeConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Specifies the cluster proxy configuration.
  /// Structure is documented below.
  final pulumi.Input<BareMetalAdminClusterProxy>? proxy;

  /// Specifies the security related settings for the Bare Metal User Cluster.
  /// Structure is documented below.
  final pulumi.Input<BareMetalAdminClusterSecurityConfig>? securityConfig;

  /// Specifies the cluster storage configuration.
  /// Structure is documented below.
  final pulumi.Input<BareMetalAdminClusterStorage>? storage;

  /// Creates a new [BareMetalAdminClusterArgs].
  /// [annotations] Annotations on the Bare Metal Admin Cluster.
  /// [bareMetalVersion] A human readable description of this Bare Metal Admin Cluster.
  /// [clusterOperations] Specifies the Admin Cluster's observability infrastructure.
  /// [controlPlane] Specifies the control plane configuration.
  /// [description] A human readable description of this Bare Metal Admin Cluster.
  /// [loadBalancer] Specifies the load balancer configuration.
  /// [location] The location of the resource.
  /// [maintenanceConfig] Specifies the workload node configurations.
  /// [name] The bare metal admin cluster name.
  /// [networkConfig] Network configuration.
  /// [nodeAccessConfig] Specifies the node access related settings for the bare metal user cluster.
  /// [nodeConfig] Specifies the workload node configurations.
  /// [project] The ID of the project in which the resource belongs.
  /// [proxy] Specifies the cluster proxy configuration.
  /// [securityConfig] Specifies the security related settings for the Bare Metal User Cluster.
  /// [storage] Specifies the cluster storage configuration.
  BareMetalAdminClusterArgs({
    Map<String, String>? annotations,
    String? bareMetalVersion,
    BareMetalAdminClusterClusterOperations? clusterOperations,
    BareMetalAdminClusterControlPlane? controlPlane,
    String? description,
    BareMetalAdminClusterLoadBalancer? loadBalancer,
    required String location,
    BareMetalAdminClusterMaintenanceConfig? maintenanceConfig,
    String? name,
    BareMetalAdminClusterNetworkConfig? networkConfig,
    BareMetalAdminClusterNodeAccessConfig? nodeAccessConfig,
    BareMetalAdminClusterNodeConfig? nodeConfig,
    String? project,
    BareMetalAdminClusterProxy? proxy,
    BareMetalAdminClusterSecurityConfig? securityConfig,
    BareMetalAdminClusterStorage? storage,
  })  : annotations =
            pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
        bareMetalVersion =
            pulumi.Input.asOptionalInput<String>(bareMetalVersion),
        clusterOperations = pulumi.Input.asOptionalInput<
            BareMetalAdminClusterClusterOperations>(clusterOperations),
        controlPlane =
            pulumi.Input.asOptionalInput<BareMetalAdminClusterControlPlane>(
                controlPlane),
        description = pulumi.Input.asOptionalInput<String>(description),
        loadBalancer =
            pulumi.Input.asOptionalInput<BareMetalAdminClusterLoadBalancer>(
                loadBalancer),
        location = pulumi.Input.asInput<String>(location),
        maintenanceConfig = pulumi.Input.asOptionalInput<
            BareMetalAdminClusterMaintenanceConfig>(maintenanceConfig),
        name = pulumi.Input.asOptionalInput<String>(name),
        networkConfig =
            pulumi.Input.asOptionalInput<BareMetalAdminClusterNetworkConfig>(
                networkConfig),
        nodeAccessConfig =
            pulumi.Input.asOptionalInput<BareMetalAdminClusterNodeAccessConfig>(
                nodeAccessConfig),
        nodeConfig =
            pulumi.Input.asOptionalInput<BareMetalAdminClusterNodeConfig>(
                nodeConfig),
        project = pulumi.Input.asOptionalInput<String>(project),
        proxy = pulumi.Input.asOptionalInput<BareMetalAdminClusterProxy>(proxy),
        securityConfig =
            pulumi.Input.asOptionalInput<BareMetalAdminClusterSecurityConfig>(
                securityConfig),
        storage =
            pulumi.Input.asOptionalInput<BareMetalAdminClusterStorage>(storage);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final bareMetalVersionValue = bareMetalVersion;
    if (bareMetalVersionValue != null) {
      map['bareMetalVersion'] = bareMetalVersionValue;
    }
    final clusterOperationsValue = clusterOperations;
    if (clusterOperationsValue != null) {
      map['clusterOperations'] = pulumi.Input.mapOptionalInputValue<
              BareMetalAdminClusterClusterOperations, Map<String, dynamic>>(
          clusterOperationsValue, (value) => value.toMap());
    }
    final controlPlaneValue = controlPlane;
    if (controlPlaneValue != null) {
      map['controlPlane'] = pulumi.Input.mapOptionalInputValue<
          BareMetalAdminClusterControlPlane,
          Map<String, dynamic>>(controlPlaneValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final loadBalancerValue = loadBalancer;
    if (loadBalancerValue != null) {
      map['loadBalancer'] = pulumi.Input.mapOptionalInputValue<
          BareMetalAdminClusterLoadBalancer,
          Map<String, dynamic>>(loadBalancerValue, (value) => value.toMap());
    }
    map['location'] = location;
    final maintenanceConfigValue = maintenanceConfig;
    if (maintenanceConfigValue != null) {
      map['maintenanceConfig'] = pulumi.Input.mapOptionalInputValue<
              BareMetalAdminClusterMaintenanceConfig, Map<String, dynamic>>(
          maintenanceConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] = pulumi.Input.mapOptionalInputValue<
          BareMetalAdminClusterNetworkConfig,
          Map<String, dynamic>>(networkConfigValue, (value) => value.toMap());
    }
    final nodeAccessConfigValue = nodeAccessConfig;
    if (nodeAccessConfigValue != null) {
      map['nodeAccessConfig'] = pulumi.Input.mapOptionalInputValue<
              BareMetalAdminClusterNodeAccessConfig, Map<String, dynamic>>(
          nodeAccessConfigValue, (value) => value.toMap());
    }
    final nodeConfigValue = nodeConfig;
    if (nodeConfigValue != null) {
      map['nodeConfig'] = pulumi.Input.mapOptionalInputValue<
          BareMetalAdminClusterNodeConfig,
          Map<String, dynamic>>(nodeConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final proxyValue = proxy;
    if (proxyValue != null) {
      map['proxy'] = pulumi.Input.mapOptionalInputValue<
          BareMetalAdminClusterProxy,
          Map<String, dynamic>>(proxyValue, (value) => value.toMap());
    }
    final securityConfigValue = securityConfig;
    if (securityConfigValue != null) {
      map['securityConfig'] = pulumi.Input.mapOptionalInputValue<
          BareMetalAdminClusterSecurityConfig,
          Map<String, dynamic>>(securityConfigValue, (value) => value.toMap());
    }
    final storageValue = storage;
    if (storageValue != null) {
      map['storage'] = pulumi.Input.mapOptionalInputValue<
          BareMetalAdminClusterStorage,
          Map<String, dynamic>>(storageValue, (value) => value.toMap());
    }
    return map;
  }

  factory BareMetalAdminClusterArgs.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterArgs(
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      bareMetalVersion: map['bareMetalVersion'] == null
          ? null
          : map['bareMetalVersion'] as String,
      clusterOperations: map['clusterOperations'] == null
          ? null
          : BareMetalAdminClusterClusterOperations.fromMap(
              (map['clusterOperations'] as Map).cast<String, dynamic>()),
      controlPlane: map['controlPlane'] == null
          ? null
          : BareMetalAdminClusterControlPlane.fromMap(
              (map['controlPlane'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      loadBalancer: map['loadBalancer'] == null
          ? null
          : BareMetalAdminClusterLoadBalancer.fromMap(
              (map['loadBalancer'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      maintenanceConfig: map['maintenanceConfig'] == null
          ? null
          : BareMetalAdminClusterMaintenanceConfig.fromMap(
              (map['maintenanceConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      networkConfig: map['networkConfig'] == null
          ? null
          : BareMetalAdminClusterNetworkConfig.fromMap(
              (map['networkConfig'] as Map).cast<String, dynamic>()),
      nodeAccessConfig: map['nodeAccessConfig'] == null
          ? null
          : BareMetalAdminClusterNodeAccessConfig.fromMap(
              (map['nodeAccessConfig'] as Map).cast<String, dynamic>()),
      nodeConfig: map['nodeConfig'] == null
          ? null
          : BareMetalAdminClusterNodeConfig.fromMap(
              (map['nodeConfig'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      proxy: map['proxy'] == null
          ? null
          : BareMetalAdminClusterProxy.fromMap(
              (map['proxy'] as Map).cast<String, dynamic>()),
      securityConfig: map['securityConfig'] == null
          ? null
          : BareMetalAdminClusterSecurityConfig.fromMap(
              (map['securityConfig'] as Map).cast<String, dynamic>()),
      storage: map['storage'] == null
          ? null
          : BareMetalAdminClusterStorage.fromMap(
              (map['storage'] as Map).cast<String, dynamic>()),
    );
  }
}
