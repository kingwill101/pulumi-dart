// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_meta.dart';
import 'service_spec.dart';

/// {@template pulumi_run_v1_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_run_v1_service_args_doc}
class ServiceArgs {
  /// The API version for this call. It must be "serving.knative.dev/v1".
  final pulumi.Input<String>? apiVersion;

  /// Indicates that the server should validate the request and populate default values without persisting the request. Supported values: `all`
  final pulumi.Input<String>? dryRun;

  /// The kind of resource. It must be "Service".
  final pulumi.Input<String>? kind;
  final pulumi.Input<String>? location;

  /// Metadata associated with this Service, including name, namespace, labels, and annotations. In Cloud Run, annotations with 'run.googleapis.com/' and 'autoscaling.knative.dev' are restricted, and the accepted annotations will be different depending on the resource type. The following Cloud Run-specific annotations are accepted in Service.metadata.annotations. * `run.googleapis.com/binary-authorization-breakglass` * `run.googleapis.com/binary-authorization` * `run.googleapis.com/client-name` * `run.googleapis.com/custom-audiences` * `run.googleapis.com/description` * `run.googleapis.com/disable-default-url` * `run.googleapis.com/gc-traffic-tags` * `run.googleapis.com/ingress` * `run.googleapis.com/ingress` sets the ingress settings for the Service. See [the ingress settings documentation](/run/docs/securing/ingress) for details on configuring ingress settings. * `run.googleapis.com/ingress-status` is output-only and contains the currently active ingress settings for the Service. `run.googleapis.com/ingress-status` may differ from `run.googleapis.com/ingress` while the system is processing a change to `run.googleapis.com/ingress` or if the system failed to process a change to `run.googleapis.com/ingress`. When the system has processed all changes successfully `run.googleapis.com/ingress-status` and `run.googleapis.com/ingress` are equal.
  final pulumi.Input<ObjectMeta>? metadata;
  final pulumi.Input<String>? project;

  /// Holds the desired state of the Service (from the client).
  final pulumi.Input<ServiceSpec>? spec;

  /// Creates a new [ServiceArgs].
  /// [apiVersion] The API version for this call. It must be "serving.knative.dev/v1".
  /// [dryRun] Indicates that the server should validate the request and populate default values without persisting the request. Supported values: `all`
  /// [kind] The kind of resource. It must be "Service".
  /// [location] Optional.
  /// [metadata] Metadata associated with this Service, including name, namespace, labels, and annotations. In Cloud Run, annotations with 'run.googleapis.com/' and 'autoscaling.knative.dev' are restricted, and the accepted annotations will be different depending on the resource type. The following Cloud Run-specific annotations are accepted in Service.metadata.annotations. * `run.googleapis.com/binary-authorization-breakglass` * `run.googleapis.com/binary-authorization` * `run.googleapis.com/client-name` * `run.googleapis.com/custom-audiences` * `run.googleapis.com/description` * `run.googleapis.com/disable-default-url` * `run.googleapis.com/gc-traffic-tags` * `run.googleapis.com/ingress` * `run.googleapis.com/ingress` sets the ingress settings for the Service. See [the ingress settings documentation](/run/docs/securing/ingress) for details on configuring ingress settings. * `run.googleapis.com/ingress-status` is output-only and contains the currently active ingress settings for the Service. `run.googleapis.com/ingress-status` may differ from `run.googleapis.com/ingress` while the system is processing a change to `run.googleapis.com/ingress` or if the system failed to process a change to `run.googleapis.com/ingress`. When the system has processed all changes successfully `run.googleapis.com/ingress-status` and `run.googleapis.com/ingress` are equal.
  /// [project] Optional.
  /// [spec] Holds the desired state of the Service (from the client).
  ServiceArgs({
    String? apiVersion,
    String? dryRun,
    String? kind,
    String? location,
    ObjectMeta? metadata,
    String? project,
    ServiceSpec? spec,
  }) : apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
       dryRun = pulumi.Input.asOptionalInput<String>(dryRun),
       kind = pulumi.Input.asOptionalInput<String>(kind),
       location = pulumi.Input.asOptionalInput<String>(location),
       metadata = pulumi.Input.asOptionalInput<ObjectMeta>(metadata),
       project = pulumi.Input.asOptionalInput<String>(project),
       spec = pulumi.Input.asOptionalInput<ServiceSpec>(spec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'dryRun': ?dryRun,
      'kind': ?kind,
      'location': ?location,
      'metadata':
          ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(
            metadata,
            (value) => value.toMap(),
          ),
      'project': ?project,
      'spec':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceSpec,
            Map<String, dynamic>
          >(spec, (value) => value.toMap()),
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      apiVersion: map['apiVersion'] == null
          ? null
          : map['apiVersion'] as String,
      dryRun: map['dryRun'] == null ? null : map['dryRun'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      metadata: map['metadata'] == null
          ? null
          : ObjectMeta.fromMap(
              (map['metadata'] as Map).cast<String, dynamic>(),
            ),
      project: map['project'] == null ? null : map['project'] as String,
      spec: map['spec'] == null
          ? null
          : ServiceSpec.fromMap((map['spec'] as Map).cast<String, dynamic>()),
    );
  }
}
