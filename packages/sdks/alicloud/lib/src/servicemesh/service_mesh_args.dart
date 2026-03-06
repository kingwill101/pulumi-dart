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
  const ServiceMeshArgs({
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
      clusterIds: (() { final guardedValue = map['clusterIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      clusterSpec: (() { final guardedValue = map['clusterSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customizedPrometheus: (() { final guardedValue = map['customizedPrometheus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      edition: (() { final guardedValue = map['edition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extraConfiguration: (() { final guardedValue = map['extraConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceMeshExtraConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      force: (() { final guardedValue = map['force']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      loadBalancer: (() { final guardedValue = map['loadBalancer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceMeshLoadBalancer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      meshConfig: (() { final guardedValue = map['meshConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceMeshMeshConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      network: pulumi.Input.fromValue(ServiceMeshNetwork.fromMap((map['network']! as Map).cast<String, dynamic>())),
      prometheusUrl: (() { final guardedValue = map['prometheusUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceMeshName: (() { final guardedValue = map['serviceMeshName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

