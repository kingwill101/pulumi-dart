import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_mesh_args.dart';
import 'service_mesh_extra_configuration.dart';
import 'service_mesh_load_balancer.dart';
import 'service_mesh_mesh_config.dart';
import 'service_mesh_network.dart';
import 'service_mesh_state.dart';

/// Provides a Service Mesh Service Mesh resource.
///
///
///
/// For information about Service Mesh Service Mesh and how to use it, see [What is Service Mesh](https://www.alibabacloud.com/help/en/asm/developer-reference/api-servicemesh-2020-01-11-createservicemesh).
///
/// > **NOTE:** Available since v1.138.0.
///
/// ## Import
///
/// Service Mesh Service Mesh can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:servicemesh/serviceMesh:ServiceMesh example <id>
/// ```
class ServiceMesh extends pulumi.CustomResource {
  /// List of clusters.
  late final pulumi.Output<List<String>?> clusterIds;
  /// Cluster specification
  late final pulumi.Output<String> clusterSpec;
  /// Service grid creation time
  late final pulumi.Output<String> createTime;
  /// Whether to customize Prometheus. Value:
  /// -'true': custom Prometheus.
  /// -'false': Do not customize Prometheus.
  ///
  /// Default value: 'false '.
  late final pulumi.Output<bool?> customizedPrometheus;
  /// Grid instance version type (for example: the standard, the Pro version, etc.)
  late final pulumi.Output<String?> edition;
  /// Data plane KubeAPI access capability See `extra_configuration` below.
  late final pulumi.Output<ServiceMeshExtraConfiguration> extraConfiguration;
  /// Whether to forcibly delete the ASM instance. Value:
  /// -'true': force deletion of ASM instance
  /// -'false': no forced deletion of ASM instance
  ///
  /// Default value: false
  late final pulumi.Output<bool?> force;
  /// Kubeconfig configuration content
  late final pulumi.Output<String> kubeconfig;
  /// Load balancing information See `load_balancer` below.
  late final pulumi.Output<ServiceMeshLoadBalancer> loadBalancer;
  /// Service grid configuration information See `mesh_config` below.
  late final pulumi.Output<ServiceMeshMeshConfig> meshConfig;
  /// Service grid network configuration information See `network` below.
  late final pulumi.Output<ServiceMeshNetwork> network;
  /// The Prometheus service address (in non-custom cases, use the ARMS address format).
  late final pulumi.Output<String?> prometheusUrl;
  /// ServiceMeshName
  late final pulumi.Output<String?> serviceMeshName;
  /// The status of the resource
  late final pulumi.Output<String> status;
  /// The tag of the resource
  late final pulumi.Output<Map<String, String>?> tags;
  /// Service grid version number
  late final pulumi.Output<String?> version;

  /// Creates a new [ServiceMesh].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceMesh]. {@macro pulumi_servicemesh_service_mesh_service_mesh_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceMesh(
    String name, {
    ServiceMeshArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:servicemesh/serviceMesh:ServiceMesh',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterIds = registerOutput<List<String>?>('clusterIds');
    this.clusterSpec = registerOutput<String>('clusterSpec');
    this.createTime = registerOutput<String>('createTime');
    this.customizedPrometheus = registerOutput<bool?>('customizedPrometheus');
    this.edition = registerOutput<String?>('edition');
    this.extraConfiguration = registerOutput<ServiceMeshExtraConfiguration>('extraConfiguration');
    this.force = registerOutput<bool?>('force');
    this.kubeconfig = registerOutput<String>('kubeconfig');
    this.loadBalancer = registerOutput<ServiceMeshLoadBalancer>('loadBalancer');
    this.meshConfig = registerOutput<ServiceMeshMeshConfig>('meshConfig');
    this.network = registerOutput<ServiceMeshNetwork>('network');
    this.prometheusUrl = registerOutput<String?>('prometheusUrl');
    this.serviceMeshName = registerOutput<String?>('serviceMeshName');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.version = registerOutput<String?>('version');
  }

  /// Gets an existing [ServiceMesh] resource's state with the given [name] and [id].
  static ServiceMesh get(
    String name,
    pulumi.Input<String> id, {
    ServiceMeshState? state,
  }) {
    return ServiceMesh._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServiceMesh._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:servicemesh/serviceMesh:ServiceMesh',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterIds = registerOutput<List<String>?>('clusterIds');
    this.clusterSpec = registerOutput<String>('clusterSpec');
    this.createTime = registerOutput<String>('createTime');
    this.customizedPrometheus = registerOutput<bool?>('customizedPrometheus');
    this.edition = registerOutput<String?>('edition');
    this.extraConfiguration = registerOutput<ServiceMeshExtraConfiguration>('extraConfiguration');
    this.force = registerOutput<bool?>('force');
    this.kubeconfig = registerOutput<String>('kubeconfig');
    this.loadBalancer = registerOutput<ServiceMeshLoadBalancer>('loadBalancer');
    this.meshConfig = registerOutput<ServiceMeshMeshConfig>('meshConfig');
    this.network = registerOutput<ServiceMeshNetwork>('network');
    this.prometheusUrl = registerOutput<String?>('prometheusUrl');
    this.serviceMeshName = registerOutput<String?>('serviceMeshName');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.version = registerOutput<String?>('version');
  }
}
