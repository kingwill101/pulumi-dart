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
    pulumi.Output<List<String>>? clusterIds,
    pulumi.Output<String>? clusterSpec,
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? customizedPrometheus,
    pulumi.Output<String>? edition,
    pulumi.Output<ServiceMeshExtraConfiguration>? extraConfiguration,
    pulumi.Output<bool>? force,
    pulumi.Output<String>? kubeconfig,
    pulumi.Output<ServiceMeshLoadBalancer>? loadBalancer,
    pulumi.Output<ServiceMeshMeshConfig>? meshConfig,
    pulumi.Output<ServiceMeshNetwork>? network,
    pulumi.Output<String>? prometheusUrl,
    pulumi.Output<String>? serviceMeshName,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? version,
  }) :
      clusterIds = pulumi.Input.asOptionalInput<List<String>>(clusterIds),
      clusterSpec = pulumi.Input.asOptionalInput<String>(clusterSpec),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      customizedPrometheus = pulumi.Input.asOptionalInput<bool>(customizedPrometheus),
      edition = pulumi.Input.asOptionalInput<String>(edition),
      extraConfiguration = pulumi.Input.asOptionalInput<ServiceMeshExtraConfiguration>(extraConfiguration),
      force = pulumi.Input.asOptionalInput<bool>(force),
      kubeconfig = pulumi.Input.asOptionalInput<String>(kubeconfig),
      loadBalancer = pulumi.Input.asOptionalInput<ServiceMeshLoadBalancer>(loadBalancer),
      meshConfig = pulumi.Input.asOptionalInput<ServiceMeshMeshConfig>(meshConfig),
      network = pulumi.Input.asOptionalInput<ServiceMeshNetwork>(network),
      prometheusUrl = pulumi.Input.asOptionalInput<String>(prometheusUrl),
      serviceMeshName = pulumi.Input.asOptionalInput<String>(serviceMeshName),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asOptionalInput<String>(version);

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
      clusterIds: map['clusterIds'] == null ? null : pulumi.Output.create<List<String>>((map['clusterIds'] as List).cast<String>()),
      clusterSpec: map['clusterSpec'] == null ? null : pulumi.Output.create<String>(map['clusterSpec'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      customizedPrometheus: map['customizedPrometheus'] == null ? null : pulumi.Output.create<bool>(map['customizedPrometheus'] as bool),
      edition: map['edition'] == null ? null : pulumi.Output.create<String>(map['edition'] as String),
      extraConfiguration: map['extraConfiguration'] == null ? null : pulumi.Output.create<ServiceMeshExtraConfiguration>(ServiceMeshExtraConfiguration.fromMap((map['extraConfiguration'] as Map).cast<String, dynamic>())),
      force: map['force'] == null ? null : pulumi.Output.create<bool>(map['force'] as bool),
      kubeconfig: map['kubeconfig'] == null ? null : pulumi.Output.create<String>(map['kubeconfig'] as String),
      loadBalancer: map['loadBalancer'] == null ? null : pulumi.Output.create<ServiceMeshLoadBalancer>(ServiceMeshLoadBalancer.fromMap((map['loadBalancer'] as Map).cast<String, dynamic>())),
      meshConfig: map['meshConfig'] == null ? null : pulumi.Output.create<ServiceMeshMeshConfig>(ServiceMeshMeshConfig.fromMap((map['meshConfig'] as Map).cast<String, dynamic>())),
      network: map['network'] == null ? null : pulumi.Output.create<ServiceMeshNetwork>(ServiceMeshNetwork.fromMap((map['network'] as Map).cast<String, dynamic>())),
      prometheusUrl: map['prometheusUrl'] == null ? null : pulumi.Output.create<String>(map['prometheusUrl'] as String),
      serviceMeshName: map['serviceMeshName'] == null ? null : pulumi.Output.create<String>(map['serviceMeshName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

