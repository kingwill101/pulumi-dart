import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_engine_response.dart';
import 'basic_service_response.dart';
import 'cloud_endpoints_response.dart';
import 'cloud_run_response_monitoring_v3.dart';
import 'cluster_istio_response.dart';
import 'gke_namespace_response.dart';
import 'gke_service_response.dart';
import 'gke_workload_response.dart';
import 'istio_canonical_service_response.dart';
import 'mesh_istio_response.dart';
import 'service_monitoring_v3_args.dart';
import 'telemetry_response.dart';

/// Create a Service.
/// Auto-naming is currently not supported for this resource.
class ServiceMonitoringV3 extends pulumi.CustomResource {
  /// Type used for App Engine services.
  late final pulumi.Output<AppEngineResponse> appEngine;

  /// Message that contains the service type and service labels of this service if it is a basic service. Documentation and examples here (https://cloud.google.com/stackdriver/docs/solutions/slo-monitoring/api/api-structures#basic-svc-w-basic-sli).
  late final pulumi.Output<BasicServiceResponse> basicService;

  /// Type used for Cloud Endpoints services.
  late final pulumi.Output<CloudEndpointsResponse> cloudEndpoints;

  /// Type used for Cloud Run services.
  late final pulumi.Output<CloudRunResponseMonitoringV3> cloudRun;

  /// Type used for Istio services that live in a Kubernetes cluster.
  late final pulumi.Output<ClusterIstioResponse> clusterIstio;

  /// Custom service type.
  late final pulumi.Output<Map<String, dynamic>> custom;

  /// Name used for UI elements listing this Service.
  late final pulumi.Output<String> displayName;

  /// Type used for GKE Namespaces.
  late final pulumi.Output<GkeNamespaceResponse> gkeNamespace;

  /// Type used for GKE Services (the Kubernetes concept of a service).
  late final pulumi.Output<GkeServiceResponse> gkeService;

  /// Type used for GKE Workloads.
  late final pulumi.Output<GkeWorkloadResponse> gkeWorkload;

  /// Type used for canonical services scoped to an Istio mesh. Metrics for Istio are documented here (https://istio.io/latest/docs/reference/config/metrics/)
  late final pulumi.Output<IstioCanonicalServiceResponse> istioCanonicalService;

  /// Type used for Istio services scoped to an Istio mesh.
  late final pulumi.Output<MeshIstioResponse> meshIstio;

  /// Resource name for this Service. The format is: projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]
  late final pulumi.Output<String> name;

  /// Optional. The Service id to use for this Service. If omitted, an id will be generated instead. Must match the pattern [a-z0-9\-]+
  late final pulumi.Output<String?> serviceId;

  /// Configuration for how to query telemetry on a Service.
  late final pulumi.Output<TelemetryResponse> telemetry;

  /// Labels which have been used to annotate the service. Label keys must start with a letter. Label keys and values may contain lowercase letters, numbers, underscores, and dashes. Label keys and values have a maximum length of 63 characters, and must be less than 128 bytes in size. Up to 64 label entries may be stored. For labels which do not have a semantic value, the empty string may be supplied for the label value.
  late final pulumi.Output<Map<String, String>> userLabels;
  late final pulumi.Output<String> v3Id;
  late final pulumi.Output<String> v3Id1;

  ServiceMonitoringV3(
    String name, {
    ServiceMonitoringV3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:monitoring/v3:Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appEngine = registerOutput<AppEngineResponse>('appEngine');
    this.basicService = registerOutput<BasicServiceResponse>('basicService');
    this.cloudEndpoints =
        registerOutput<CloudEndpointsResponse>('cloudEndpoints');
    this.cloudRun = registerOutput<CloudRunResponseMonitoringV3>('cloudRun');
    this.clusterIstio = registerOutput<ClusterIstioResponse>('clusterIstio');
    this.custom = registerOutput<Map<String, dynamic>>('custom');
    this.displayName = registerOutput<String>('displayName');
    this.gkeNamespace = registerOutput<GkeNamespaceResponse>('gkeNamespace');
    this.gkeService = registerOutput<GkeServiceResponse>('gkeService');
    this.gkeWorkload = registerOutput<GkeWorkloadResponse>('gkeWorkload');
    this.istioCanonicalService =
        registerOutput<IstioCanonicalServiceResponse>('istioCanonicalService');
    this.meshIstio = registerOutput<MeshIstioResponse>('meshIstio');
    this.name = registerOutput<String>('name');
    this.serviceId = registerOutput<String?>('serviceId');
    this.telemetry = registerOutput<TelemetryResponse>('telemetry');
    this.userLabels = registerOutput<Map<String, String>>('userLabels');
    this.v3Id = registerOutput<String>('v3Id');
    this.v3Id1 = registerOutput<String>('v3Id1');
  }
}
