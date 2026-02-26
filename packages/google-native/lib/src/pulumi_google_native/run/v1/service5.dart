import 'package:pulumi/pulumi.dart';
import 'object_meta_response.dart';
import 'service_args5.dart';
import 'service_spec_response.dart';
import 'service_status_response.dart';

/// Creates a new Service. Service creation will trigger a new deployment. Use GetService, and check service.status to determine if the Service is ready.
/// Auto-naming is currently not supported for this resource.
class Service5 extends CustomResource {
  /// The API version for this call. It must be "serving.knative.dev/v1".
  late final Output<String> apiVersion;

  /// Indicates that the server should validate the request and populate default values without persisting the request. Supported values: `all`
  late final Output<String?> dryRun;

  /// The kind of resource. It must be "Service".
  late final Output<String> kind;
  late final Output<String> location;

  /// Metadata associated with this Service, including name, namespace, labels, and annotations. In Cloud Run, annotations with 'run.googleapis.com/' and 'autoscaling.knative.dev' are restricted, and the accepted annotations will be different depending on the resource type. The following Cloud Run-specific annotations are accepted in Service.metadata.annotations. * `run.googleapis.com/binary-authorization-breakglass` * `run.googleapis.com/binary-authorization` * `run.googleapis.com/client-name` * `run.googleapis.com/custom-audiences` * `run.googleapis.com/description` * `run.googleapis.com/disable-default-url` * `run.googleapis.com/gc-traffic-tags` * `run.googleapis.com/ingress` * `run.googleapis.com/ingress` sets the ingress settings for the Service. See [the ingress settings documentation](/run/docs/securing/ingress) for details on configuring ingress settings. * `run.googleapis.com/ingress-status` is output-only and contains the currently active ingress settings for the Service. `run.googleapis.com/ingress-status` may differ from `run.googleapis.com/ingress` while the system is processing a change to `run.googleapis.com/ingress` or if the system failed to process a change to `run.googleapis.com/ingress`. When the system has processed all changes successfully `run.googleapis.com/ingress-status` and `run.googleapis.com/ingress` are equal.
  late final Output<ObjectMetaResponse> metadata;
  late final Output<String> project;

  /// Holds the desired state of the Service (from the client).
  late final Output<ServiceSpecResponse> spec;

  /// Communicates the system-controlled state of the Service.
  late final Output<ServiceStatusResponse> status;

  Service5(
    String name, {
    ServiceArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:run/v1:Service',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiVersion = Output.createUnknown<String>();
    this.dryRun = Output.createUnknown<String?>();
    this.kind = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.metadata = Output.createUnknown<ObjectMetaResponse>();
    this.project = Output.createUnknown<String>();
    this.spec = Output.createUnknown<ServiceSpecResponse>();
    this.status = Output.createUnknown<ServiceStatusResponse>();
  }
}
