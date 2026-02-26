import 'package:pulumi/pulumi.dart';
import 'app_engine_response.dart';
import 'basic_service_response.dart';
import 'cloud_endpoints_response.dart';
import 'cloud_run_response2.dart';
import 'cluster_istio_response.dart';
import 'gke_namespace_response.dart';
import 'gke_service_response.dart';
import 'gke_workload_response.dart';
import 'istio_canonical_service_response.dart';
import 'mesh_istio_response.dart';
import 'service_args4.dart';
import 'telemetry_response.dart';

/// Create a Service.
/// Auto-naming is currently not supported for this resource.
class Service4 extends CustomResource {
  /// Type used for App Engine services.
  late final Output<AppEngineResponse> appEngine;

  /// Message that contains the service type and service labels of this service if it is a basic service. Documentation and examples here (https://cloud.google.com/stackdriver/docs/solutions/slo-monitoring/api/api-structures#basic-svc-w-basic-sli).
  late final Output<BasicServiceResponse> basicService;

  /// Type used for Cloud Endpoints services.
  late final Output<CloudEndpointsResponse> cloudEndpoints;

  /// Type used for Cloud Run services.
  late final Output<CloudRunResponse2> cloudRun;

  /// Type used for Istio services that live in a Kubernetes cluster.
  late final Output<ClusterIstioResponse> clusterIstio;

  /// Custom service type.
  late final Output<Map<String, dynamic>> custom;

  /// Name used for UI elements listing this Service.
  late final Output<String> displayName;

  /// Type used for GKE Namespaces.
  late final Output<GkeNamespaceResponse> gkeNamespace;

  /// Type used for GKE Services (the Kubernetes concept of a service).
  late final Output<GkeServiceResponse> gkeService;

  /// Type used for GKE Workloads.
  late final Output<GkeWorkloadResponse> gkeWorkload;

  /// Type used for canonical services scoped to an Istio mesh. Metrics for Istio are documented here (https://istio.io/latest/docs/reference/config/metrics/)
  late final Output<IstioCanonicalServiceResponse> istioCanonicalService;

  /// Type used for Istio services scoped to an Istio mesh.
  late final Output<MeshIstioResponse> meshIstio;

  /// Resource name for this Service. The format is: projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]
  late final Output<String> name;

  /// Optional. The Service id to use for this Service. If omitted, an id will be generated instead. Must match the pattern [a-z0-9\-]+
  late final Output<String?> serviceId;

  /// Configuration for how to query telemetry on a Service.
  late final Output<TelemetryResponse> telemetry;

  /// Labels which have been used to annotate the service. Label keys must start with a letter. Label keys and values may contain lowercase letters, numbers, underscores, and dashes. Label keys and values have a maximum length of 63 characters, and must be less than 128 bytes in size. Up to 64 label entries may be stored. For labels which do not have a semantic value, the empty string may be supplied for the label value.
  late final Output<Map<String, String>> userLabels;
  late final Output<String> v3Id;
  late final Output<String> v3Id1;

  Service4(
    String name, {
    ServiceArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:monitoring/v3:Service',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appEngine = Output.createUnknown<AppEngineResponse>();
    this.basicService = Output.createUnknown<BasicServiceResponse>();
    this.cloudEndpoints = Output.createUnknown<CloudEndpointsResponse>();
    this.cloudRun = Output.createUnknown<CloudRunResponse2>();
    this.clusterIstio = Output.createUnknown<ClusterIstioResponse>();
    this.custom = Output.createUnknown<Map<String, dynamic>>();
    this.displayName = Output.createUnknown<String>();
    this.gkeNamespace = Output.createUnknown<GkeNamespaceResponse>();
    this.gkeService = Output.createUnknown<GkeServiceResponse>();
    this.gkeWorkload = Output.createUnknown<GkeWorkloadResponse>();
    this.istioCanonicalService =
        Output.createUnknown<IstioCanonicalServiceResponse>();
    this.meshIstio = Output.createUnknown<MeshIstioResponse>();
    this.name = Output.createUnknown<String>();
    this.serviceId = Output.createUnknown<String?>();
    this.telemetry = Output.createUnknown<TelemetryResponse>();
    this.userLabels = Output.createUnknown<Map<String, String>>();
    this.v3Id = Output.createUnknown<String>();
    this.v3Id1 = Output.createUnknown<String>();
  }
}
