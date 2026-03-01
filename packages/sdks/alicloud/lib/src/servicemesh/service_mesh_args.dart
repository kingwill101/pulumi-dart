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
    pulumi.Output<List<String>>? clusterIds,
    pulumi.Output<String>? clusterSpec,
    pulumi.Output<bool>? customizedPrometheus,
    pulumi.Output<String>? edition,
    pulumi.Output<ServiceMeshExtraConfiguration>? extraConfiguration,
    pulumi.Output<bool>? force,
    pulumi.Output<ServiceMeshLoadBalancer>? loadBalancer,
    pulumi.Output<ServiceMeshMeshConfig>? meshConfig,
    required pulumi.Output<ServiceMeshNetwork> network,
    pulumi.Output<String>? prometheusUrl,
    pulumi.Output<String>? serviceMeshName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? version,
  }) :
      clusterIds = pulumi.Input.asOptionalInput<List<String>>(clusterIds),
      clusterSpec = pulumi.Input.asOptionalInput<String>(clusterSpec),
      customizedPrometheus = pulumi.Input.asOptionalInput<bool>(customizedPrometheus),
      edition = pulumi.Input.asOptionalInput<String>(edition),
      extraConfiguration = pulumi.Input.asOptionalInput<ServiceMeshExtraConfiguration>(extraConfiguration),
      force = pulumi.Input.asOptionalInput<bool>(force),
      loadBalancer = pulumi.Input.asOptionalInput<ServiceMeshLoadBalancer>(loadBalancer),
      meshConfig = pulumi.Input.asOptionalInput<ServiceMeshMeshConfig>(meshConfig),
      network = pulumi.Input.asInput<ServiceMeshNetwork>(network),
      prometheusUrl = pulumi.Input.asOptionalInput<String>(prometheusUrl),
      serviceMeshName = pulumi.Input.asOptionalInput<String>(serviceMeshName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asOptionalInput<String>(version);

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
      clusterIds: map['clusterIds'] == null ? null : pulumi.Output.create<List<String>>((map['clusterIds'] as List).cast<String>()),
      clusterSpec: map['clusterSpec'] == null ? null : pulumi.Output.create<String>(map['clusterSpec'] as String),
      customizedPrometheus: map['customizedPrometheus'] == null ? null : pulumi.Output.create<bool>(map['customizedPrometheus'] as bool),
      edition: map['edition'] == null ? null : pulumi.Output.create<String>(map['edition'] as String),
      extraConfiguration: map['extraConfiguration'] == null ? null : pulumi.Output.create<ServiceMeshExtraConfiguration>(ServiceMeshExtraConfiguration.fromMap((map['extraConfiguration'] as Map).cast<String, dynamic>())),
      force: map['force'] == null ? null : pulumi.Output.create<bool>(map['force'] as bool),
      loadBalancer: map['loadBalancer'] == null ? null : pulumi.Output.create<ServiceMeshLoadBalancer>(ServiceMeshLoadBalancer.fromMap((map['loadBalancer'] as Map).cast<String, dynamic>())),
      meshConfig: map['meshConfig'] == null ? null : pulumi.Output.create<ServiceMeshMeshConfig>(ServiceMeshMeshConfig.fromMap((map['meshConfig'] as Map).cast<String, dynamic>())),
      network: pulumi.Output.create<ServiceMeshNetwork>(ServiceMeshNetwork.fromMap((map['network'] as Map).cast<String, dynamic>())),
      prometheusUrl: map['prometheusUrl'] == null ? null : pulumi.Output.create<String>(map['prometheusUrl'] as String),
      serviceMeshName: map['serviceMeshName'] == null ? null : pulumi.Output.create<String>(map['serviceMeshName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

