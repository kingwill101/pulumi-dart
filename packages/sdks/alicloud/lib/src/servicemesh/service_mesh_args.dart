// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_mesh_extra_configuration.dart';
import 'service_mesh_load_balancer.dart';
import 'service_mesh_mesh_config.dart';
import 'service_mesh_network.dart';

/// {@template pulumi_servicemesh_service_mesh_service_mesh_args_doc}
/// The set of arguments for ServiceMesh.
/// {@endtemplate}
/// {@macro pulumi_servicemesh_service_mesh_service_mesh_args_doc}
class ServiceMeshArgs {
  /// List of clusters.
  final pulumi.Input<List<String>>? clusterIds;
  /// Cluster specification
  final pulumi.Input<String>? clusterSpec;
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
  /// Load balancing information See `load_balancer` below.
  final pulumi.Input<ServiceMeshLoadBalancer>? loadBalancer;
  /// Service grid configuration information See `mesh_config` below.
  final pulumi.Input<ServiceMeshMeshConfig>? meshConfig;
  /// Service grid network configuration information See `network` below.
  final pulumi.Input<ServiceMeshNetwork> network;
  /// The Prometheus service address (in non-custom cases, use the ARMS address format).
  final pulumi.Input<String>? prometheusUrl;
  /// ServiceMeshName
  final pulumi.Input<String>? serviceMeshName;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// Service grid version number
  final pulumi.Input<String>? version;

  /// Creates a new [ServiceMeshArgs].
  /// [clusterIds] List of clusters.
  /// [clusterSpec] Cluster specification
  /// [customizedPrometheus] Whether to customize Prometheus. Value:
  /// [edition] Grid instance version type (for example: the standard, the Pro version, etc.)
  /// [extraConfiguration] Data plane KubeAPI access capability See `extra_configuration` below.
  /// [force] Whether to forcibly delete the ASM instance. Value:
  /// [loadBalancer] Load balancing information See `load_balancer` below.
  /// [meshConfig] Service grid configuration information See `mesh_config` below.
  /// [network] Service grid network configuration information See `network` below.
  /// [prometheusUrl] The Prometheus service address (in non-custom cases, use the ARMS address format).
  /// [serviceMeshName] ServiceMeshName
  /// [tags] The tag of the resource
  /// [version] Service grid version number
  ServiceMeshArgs({
    this.clusterIds,
    this.clusterSpec,
    this.customizedPrometheus,
    this.edition,
    this.extraConfiguration,
    this.force,
    this.loadBalancer,
    this.meshConfig,
    required this.network,
    this.prometheusUrl,
    this.serviceMeshName,
    this.tags,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterIds': ?clusterIds,
      'clusterSpec': ?clusterSpec,
      'customizedPrometheus': ?customizedPrometheus,
      'edition': ?edition,
      'extraConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceMeshExtraConfiguration, Map<String, dynamic>>(extraConfiguration, (value) => value.toMap()),
      'force': ?force,
      'loadBalancer': ?pulumi.Input.mapOptionalInputValue<ServiceMeshLoadBalancer, Map<String, dynamic>>(loadBalancer, (value) => value.toMap()),
      'meshConfig': ?pulumi.Input.mapOptionalInputValue<ServiceMeshMeshConfig, Map<String, dynamic>>(meshConfig, (value) => value.toMap()),
      'network': pulumi.Input.mapInputValue<ServiceMeshNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
      'prometheusUrl': ?prometheusUrl,
      'serviceMeshName': ?serviceMeshName,
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory ServiceMeshArgs.fromMap(Map<String, dynamic> map) {
    return ServiceMeshArgs(
      clusterIds: map['clusterIds'] == null ? null : ((map['clusterIds']! as List).cast<String>()).input(),
      clusterSpec: map['clusterSpec'] == null ? null : (map['clusterSpec']! as String).input(),
      customizedPrometheus: map['customizedPrometheus'] == null ? null : (map['customizedPrometheus']! as bool).input(),
      edition: map['edition'] == null ? null : (map['edition']! as String).input(),
      extraConfiguration: map['extraConfiguration'] == null ? null : (ServiceMeshExtraConfiguration.fromMap((map['extraConfiguration']! as Map).cast<String, dynamic>())).input(),
      force: map['force'] == null ? null : (map['force']! as bool).input(),
      loadBalancer: map['loadBalancer'] == null ? null : (ServiceMeshLoadBalancer.fromMap((map['loadBalancer']! as Map).cast<String, dynamic>())).input(),
      meshConfig: map['meshConfig'] == null ? null : (ServiceMeshMeshConfig.fromMap((map['meshConfig']! as Map).cast<String, dynamic>())).input(),
      network: (ServiceMeshNetwork.fromMap((map['network'] as Map).cast<String, dynamic>())).input(),
      prometheusUrl: map['prometheusUrl'] == null ? null : (map['prometheusUrl']! as String).input(),
      serviceMeshName: map['serviceMeshName'] == null ? null : (map['serviceMeshName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

