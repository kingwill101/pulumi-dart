// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_mesh_extra_configuration.dart';
import 'service_mesh_load_balancer.dart';
import 'service_mesh_mesh_config.dart';
import 'service_mesh_network.dart';

/// Input properties used for looking up and filtering ServiceMesh resources.
class ServiceMeshState {
  /// List of clusters.
  final pulumi.Input<List<String>>? clusterIds;
  /// Cluster specification
  final pulumi.Input<String>? clusterSpec;
  /// Service grid creation time
  final pulumi.Input<String>? createTime;
  /// Whether to customize Prometheus. Value:
  /// -'true': custom Prometheus.
  /// -'false': Do not customize Prometheus.
  ///
  /// Default value: 'false '.
  final pulumi.Input<bool>? customizedPrometheus;
  /// Grid instance version type (for example: the standard, the Pro version, etc.)
  final pulumi.Input<String>? edition;
  /// Data plane KubeAPI access capability See `extra_configuration` below.
  final pulumi.Input<ServiceMeshExtraConfiguration>? extraConfiguration;
  /// Whether to forcibly delete the ASM instance. Value:
  /// -'true': force deletion of ASM instance
  /// -'false': no forced deletion of ASM instance
  ///
  /// Default value: false
  final pulumi.Input<bool>? force;
  /// Kubeconfig configuration content
  final pulumi.Input<String>? kubeconfig;
  /// Load balancing information See `load_balancer` below.
  final pulumi.Input<ServiceMeshLoadBalancer>? loadBalancer;
  /// Service grid configuration information See `mesh_config` below.
  final pulumi.Input<ServiceMeshMeshConfig>? meshConfig;
  /// Service grid network configuration information See `network` below.
  final pulumi.Input<ServiceMeshNetwork>? network;
  /// The Prometheus service address (in non-custom cases, use the ARMS address format).
  final pulumi.Input<String>? prometheusUrl;
  /// ServiceMeshName
  final pulumi.Input<String>? serviceMeshName;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// Service grid version number
  final pulumi.Input<String>? version;

  /// Creates a new [ServiceMeshState].
  /// [clusterIds] List of clusters.
  /// [clusterSpec] Cluster specification
  /// [createTime] Service grid creation time
  /// [customizedPrometheus] Whether to customize Prometheus. Value:
  /// [edition] Grid instance version type (for example: the standard, the Pro version, etc.)
  /// [extraConfiguration] Data plane KubeAPI access capability See `extra_configuration` below.
  /// [force] Whether to forcibly delete the ASM instance. Value:
  /// [kubeconfig] Kubeconfig configuration content
  /// [loadBalancer] Load balancing information See `load_balancer` below.
  /// [meshConfig] Service grid configuration information See `mesh_config` below.
  /// [network] Service grid network configuration information See `network` below.
  /// [prometheusUrl] The Prometheus service address (in non-custom cases, use the ARMS address format).
  /// [serviceMeshName] ServiceMeshName
  /// [status] The status of the resource
  /// [tags] The tag of the resource
  /// [version] Service grid version number
  ServiceMeshState({
    this.clusterIds,
    this.clusterSpec,
    this.createTime,
    this.customizedPrometheus,
    this.edition,
    this.extraConfiguration,
    this.force,
    this.kubeconfig,
    this.loadBalancer,
    this.meshConfig,
    this.network,
    this.prometheusUrl,
    this.serviceMeshName,
    this.status,
    this.tags,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterIds': ?clusterIds,
      'clusterSpec': ?clusterSpec,
      'createTime': ?createTime,
      'customizedPrometheus': ?customizedPrometheus,
      'edition': ?edition,
      'extraConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceMeshExtraConfiguration, Map<String, dynamic>>(extraConfiguration, (value) => value.toMap()),
      'force': ?force,
      'kubeconfig': ?kubeconfig,
      'loadBalancer': ?pulumi.Input.mapOptionalInputValue<ServiceMeshLoadBalancer, Map<String, dynamic>>(loadBalancer, (value) => value.toMap()),
      'meshConfig': ?pulumi.Input.mapOptionalInputValue<ServiceMeshMeshConfig, Map<String, dynamic>>(meshConfig, (value) => value.toMap()),
      'network': ?pulumi.Input.mapOptionalInputValue<ServiceMeshNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
      'prometheusUrl': ?prometheusUrl,
      'serviceMeshName': ?serviceMeshName,
      'status': ?status,
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory ServiceMeshState.fromMap(Map<String, dynamic> map) {
    return ServiceMeshState(
      clusterIds: map['clusterIds'] == null ? null : ((map['clusterIds'] as List).cast<String>()).input(),
      clusterSpec: map['clusterSpec'] == null ? null : (map['clusterSpec'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      customizedPrometheus: map['customizedPrometheus'] == null ? null : (map['customizedPrometheus'] as bool).input(),
      edition: map['edition'] == null ? null : (map['edition'] as String).input(),
      extraConfiguration: map['extraConfiguration'] == null ? null : (ServiceMeshExtraConfiguration.fromMap((map['extraConfiguration'] as Map).cast<String, dynamic>())).input(),
      force: map['force'] == null ? null : (map['force'] as bool).input(),
      kubeconfig: map['kubeconfig'] == null ? null : (map['kubeconfig'] as String).input(),
      loadBalancer: map['loadBalancer'] == null ? null : (ServiceMeshLoadBalancer.fromMap((map['loadBalancer'] as Map).cast<String, dynamic>())).input(),
      meshConfig: map['meshConfig'] == null ? null : (ServiceMeshMeshConfig.fromMap((map['meshConfig'] as Map).cast<String, dynamic>())).input(),
      network: map['network'] == null ? null : (ServiceMeshNetwork.fromMap((map['network'] as Map).cast<String, dynamic>())).input(),
      prometheusUrl: map['prometheusUrl'] == null ? null : (map['prometheusUrl'] as String).input(),
      serviceMeshName: map['serviceMeshName'] == null ? null : (map['serviceMeshName'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

