// ignore_for_file: unused_element, unnecessary_cast

import 'object_meta_response.dart';
import 'service_spec_response.dart';
import 'service_status_response.dart';

/// Result data returned by getService.
class GetServiceResult5 {
  /// The API version for this call. It must be "serving.knative.dev/v1".
  final String apiVersion;

  /// The kind of resource. It must be "Service".
  final String kind;

  /// Metadata associated with this Service, including name, namespace, labels, and annotations. In Cloud Run, annotations with 'run.googleapis.com/' and 'autoscaling.knative.dev' are restricted, and the accepted annotations will be different depending on the resource type. The following Cloud Run-specific annotations are accepted in Service.metadata.annotations. * `run.googleapis.com/binary-authorization-breakglass` * `run.googleapis.com/binary-authorization` * `run.googleapis.com/client-name` * `run.googleapis.com/custom-audiences` * `run.googleapis.com/description` * `run.googleapis.com/disable-default-url` * `run.googleapis.com/gc-traffic-tags` * `run.googleapis.com/ingress` * `run.googleapis.com/ingress` sets the ingress settings for the Service. See [the ingress settings documentation](/run/docs/securing/ingress) for details on configuring ingress settings. * `run.googleapis.com/ingress-status` is output-only and contains the currently active ingress settings for the Service. `run.googleapis.com/ingress-status` may differ from `run.googleapis.com/ingress` while the system is processing a change to `run.googleapis.com/ingress` or if the system failed to process a change to `run.googleapis.com/ingress`. When the system has processed all changes successfully `run.googleapis.com/ingress-status` and `run.googleapis.com/ingress` are equal.
  final ObjectMetaResponse metadata;

  /// Holds the desired state of the Service (from the client).
  final ServiceSpecResponse spec;

  /// Communicates the system-controlled state of the Service.
  final ServiceStatusResponse status;

  GetServiceResult5({
    required this.apiVersion,
    required this.kind,
    required this.metadata,
    required this.spec,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiVersion'] = apiVersion;
    map['kind'] = kind;
    map['metadata'] = metadata.toMap();
    map['spec'] = spec.toMap();
    map['status'] = status.toMap();
    return map;
  }

  factory GetServiceResult5.fromMap(Map<String, dynamic> map) {
    return GetServiceResult5(
      apiVersion: map['apiVersion'] as String,
      kind: map['kind'] as String,
      metadata: ObjectMetaResponse.fromMap(
          (map['metadata'] as Map).cast<String, dynamic>()),
      spec: ServiceSpecResponse.fromMap(
          (map['spec'] as Map).cast<String, dynamic>()),
      status: ServiceStatusResponse.fromMap(
          (map['status'] as Map).cast<String, dynamic>()),
    );
  }
}
