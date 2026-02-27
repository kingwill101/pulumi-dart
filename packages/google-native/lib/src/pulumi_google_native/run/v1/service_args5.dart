// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'object_meta.dart';
import 'service_spec.dart';

/// The set of arguments for Service.
class ServiceArgs5 {
  /// The API version for this call. It must be "serving.knative.dev/v1".
  final Input<String>? apiVersion;

  /// Indicates that the server should validate the request and populate default values without persisting the request. Supported values: `all`
  final Input<String>? dryRun;

  /// The kind of resource. It must be "Service".
  final Input<String>? kind;
  final Input<String>? location;

  /// Metadata associated with this Service, including name, namespace, labels, and annotations. In Cloud Run, annotations with 'run.googleapis.com/' and 'autoscaling.knative.dev' are restricted, and the accepted annotations will be different depending on the resource type. The following Cloud Run-specific annotations are accepted in Service.metadata.annotations. * `run.googleapis.com/binary-authorization-breakglass` * `run.googleapis.com/binary-authorization` * `run.googleapis.com/client-name` * `run.googleapis.com/custom-audiences` * `run.googleapis.com/description` * `run.googleapis.com/disable-default-url` * `run.googleapis.com/gc-traffic-tags` * `run.googleapis.com/ingress` * `run.googleapis.com/ingress` sets the ingress settings for the Service. See [the ingress settings documentation](/run/docs/securing/ingress) for details on configuring ingress settings. * `run.googleapis.com/ingress-status` is output-only and contains the currently active ingress settings for the Service. `run.googleapis.com/ingress-status` may differ from `run.googleapis.com/ingress` while the system is processing a change to `run.googleapis.com/ingress` or if the system failed to process a change to `run.googleapis.com/ingress`. When the system has processed all changes successfully `run.googleapis.com/ingress-status` and `run.googleapis.com/ingress` are equal.
  final Input<ObjectMeta>? metadata;
  final Input<String>? project;

  /// Holds the desired state of the Service (from the client).
  final Input<ServiceSpec>? spec;

  ServiceArgs5({
    this.apiVersion,
    this.dryRun,
    this.kind,
    this.location,
    this.metadata,
    this.project,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiVersionValue = apiVersion;
    if (apiVersionValue != null) {
      map['apiVersion'] = apiVersionValue;
    }
    final dryRunValue = dryRun;
    if (dryRunValue != null) {
      map['dryRun'] = dryRunValue;
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] =
          Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(
              metadataValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final specValue = spec;
    if (specValue != null) {
      map['spec'] =
          Input.mapOptionalInputValue<ServiceSpec, Map<String, dynamic>>(
              specValue, (value) => value.toMap());
    }
    return map;
  }

  factory ServiceArgs5.fromMap(Map<String, dynamic> map) {
    return ServiceArgs5(
      apiVersion: Input.asOptionalInput<String>(map['apiVersion']),
      dryRun: Input.asOptionalInput<String>(map['dryRun']),
      kind: Input.asOptionalInput<String>(map['kind']),
      location: Input.asOptionalInput<String>(map['location']),
      metadata: Input.asOptionalInput<ObjectMeta>(map['metadata']),
      project: Input.asOptionalInput<String>(map['project']),
      spec: Input.asOptionalInput<ServiceSpec>(map['spec']),
    );
  }
}
