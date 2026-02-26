// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bare_metal_admin_cluster_cluster_operations/bare_metal_admin_cluster_cluster_operations.dart';
import '../bare_metal_admin_cluster_control_plane/bare_metal_admin_cluster_control_plane.dart';
import '../bare_metal_admin_cluster_load_balancer/bare_metal_admin_cluster_load_balancer.dart';
import '../bare_metal_admin_cluster_maintenance_config/bare_metal_admin_cluster_maintenance_config.dart';
import '../bare_metal_admin_cluster_network_config/bare_metal_admin_cluster_network_config.dart';
import '../bare_metal_admin_cluster_node_access_config/bare_metal_admin_cluster_node_access_config.dart';
import '../bare_metal_admin_cluster_node_config/bare_metal_admin_cluster_node_config.dart';
import '../bare_metal_admin_cluster_proxy/bare_metal_admin_cluster_proxy.dart';
import '../bare_metal_admin_cluster_security_config/bare_metal_admin_cluster_security_config.dart';
import '../bare_metal_admin_cluster_storage/bare_metal_admin_cluster_storage.dart';

/// The set of arguments for BareMetalAdminCluster.
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
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveAnnotations`" pulumi-lang-dotnet="`EffectiveAnnotations`" pulumi-lang-go="`effectiveAnnotations`" pulumi-lang-python="`effective_annotations`" pulumi-lang-yaml="`effectiveAnnotations`" pulumi-lang-java="`effectiveAnnotations`">`effective_annotations`</span> for all of the annotations present on the resource.
  final Input<Map<String, String>>? annotations;

  /// A human readable description of this Bare Metal Admin Cluster.
  final Input<String>? bareMetalVersion;

  /// Specifies the Admin Cluster's observability infrastructure.
  /// Structure is documented below.
  final Input<BareMetalAdminClusterClusterOperations>? clusterOperations;

  /// Specifies the control plane configuration.
  /// Structure is documented below.
  final Input<BareMetalAdminClusterControlPlane>? controlPlane;

  /// A human readable description of this Bare Metal Admin Cluster.
  final Input<String>? description;

  /// Specifies the load balancer configuration.
  /// Structure is documented below.
  final Input<BareMetalAdminClusterLoadBalancer>? loadBalancer;

  /// The location of the resource.
  final Input<String> location;

  /// Specifies the workload node configurations.
  /// Structure is documented below.
  final Input<BareMetalAdminClusterMaintenanceConfig>? maintenanceConfig;

  /// The bare metal admin cluster name.
  final Input<String>? name;

  /// Network configuration.
  /// Structure is documented below.
  final Input<BareMetalAdminClusterNetworkConfig>? networkConfig;

  /// Specifies the node access related settings for the bare metal user cluster.
  /// Structure is documented below.
  final Input<BareMetalAdminClusterNodeAccessConfig>? nodeAccessConfig;

  /// Specifies the workload node configurations.
  /// Structure is documented below.
  final Input<BareMetalAdminClusterNodeConfig>? nodeConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Specifies the cluster proxy configuration.
  /// Structure is documented below.
  final Input<BareMetalAdminClusterProxy>? proxy;

  /// Specifies the security related settings for the Bare Metal User Cluster.
  /// Structure is documented below.
  final Input<BareMetalAdminClusterSecurityConfig>? securityConfig;

  /// Specifies the cluster storage configuration.
  /// Structure is documented below.
  final Input<BareMetalAdminClusterStorage>? storage;

  BareMetalAdminClusterArgs({
    this.annotations,
    this.bareMetalVersion,
    this.clusterOperations,
    this.controlPlane,
    this.description,
    this.loadBalancer,
    required this.location,
    this.maintenanceConfig,
    this.name,
    this.networkConfig,
    this.nodeAccessConfig,
    this.nodeConfig,
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
    final bareMetalVersionValue = bareMetalVersion;
    if (bareMetalVersionValue != null) {
      map['bareMetalVersion'] = bareMetalVersionValue;
    }
    final clusterOperationsValue = clusterOperations;
    if (clusterOperationsValue != null) {
      map['clusterOperations'] = Input.mapOptionalInputValue<
              BareMetalAdminClusterClusterOperations, Map<String, dynamic>>(
          clusterOperationsValue, (value) => value.toMap());
    }
    final controlPlaneValue = controlPlane;
    if (controlPlaneValue != null) {
      map['controlPlane'] = Input.mapOptionalInputValue<
          BareMetalAdminClusterControlPlane,
          Map<String, dynamic>>(controlPlaneValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final loadBalancerValue = loadBalancer;
    if (loadBalancerValue != null) {
      map['loadBalancer'] = Input.mapOptionalInputValue<
          BareMetalAdminClusterLoadBalancer,
          Map<String, dynamic>>(loadBalancerValue, (value) => value.toMap());
    }
    map['location'] = location;
    final maintenanceConfigValue = maintenanceConfig;
    if (maintenanceConfigValue != null) {
      map['maintenanceConfig'] = Input.mapOptionalInputValue<
              BareMetalAdminClusterMaintenanceConfig, Map<String, dynamic>>(
          maintenanceConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] = Input.mapOptionalInputValue<
          BareMetalAdminClusterNetworkConfig,
          Map<String, dynamic>>(networkConfigValue, (value) => value.toMap());
    }
    final nodeAccessConfigValue = nodeAccessConfig;
    if (nodeAccessConfigValue != null) {
      map['nodeAccessConfig'] = Input.mapOptionalInputValue<
              BareMetalAdminClusterNodeAccessConfig, Map<String, dynamic>>(
          nodeAccessConfigValue, (value) => value.toMap());
    }
    final nodeConfigValue = nodeConfig;
    if (nodeConfigValue != null) {
      map['nodeConfig'] = Input.mapOptionalInputValue<
          BareMetalAdminClusterNodeConfig,
          Map<String, dynamic>>(nodeConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final proxyValue = proxy;
    if (proxyValue != null) {
      map['proxy'] = Input.mapOptionalInputValue<BareMetalAdminClusterProxy,
          Map<String, dynamic>>(proxyValue, (value) => value.toMap());
    }
    final securityConfigValue = securityConfig;
    if (securityConfigValue != null) {
      map['securityConfig'] = Input.mapOptionalInputValue<
          BareMetalAdminClusterSecurityConfig,
          Map<String, dynamic>>(securityConfigValue, (value) => value.toMap());
    }
    final storageValue = storage;
    if (storageValue != null) {
      map['storage'] = Input.mapOptionalInputValue<BareMetalAdminClusterStorage,
          Map<String, dynamic>>(storageValue, (value) => value.toMap());
    }
    return map;
  }

  factory BareMetalAdminClusterArgs.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      bareMetalVersion: Input.asOptionalInput<String>(map['bareMetalVersion']),
      clusterOperations:
          Input.asOptionalInput<BareMetalAdminClusterClusterOperations>(
              map['clusterOperations']),
      controlPlane: Input.asOptionalInput<BareMetalAdminClusterControlPlane>(
          map['controlPlane']),
      description: Input.asOptionalInput<String>(map['description']),
      loadBalancer: Input.asOptionalInput<BareMetalAdminClusterLoadBalancer>(
          map['loadBalancer']),
      location: Input.asInput<String>(map['location']),
      maintenanceConfig:
          Input.asOptionalInput<BareMetalAdminClusterMaintenanceConfig>(
              map['maintenanceConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      networkConfig: Input.asOptionalInput<BareMetalAdminClusterNetworkConfig>(
          map['networkConfig']),
      nodeAccessConfig:
          Input.asOptionalInput<BareMetalAdminClusterNodeAccessConfig>(
              map['nodeAccessConfig']),
      nodeConfig: Input.asOptionalInput<BareMetalAdminClusterNodeConfig>(
          map['nodeConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      proxy: Input.asOptionalInput<BareMetalAdminClusterProxy>(map['proxy']),
      securityConfig:
          Input.asOptionalInput<BareMetalAdminClusterSecurityConfig>(
              map['securityConfig']),
      storage:
          Input.asOptionalInput<BareMetalAdminClusterStorage>(map['storage']),
    );
  }
}
