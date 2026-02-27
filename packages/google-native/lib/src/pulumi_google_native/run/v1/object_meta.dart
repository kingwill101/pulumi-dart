// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'owner_reference.dart';

/// google.cloud.run.meta.v1.ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
class ObjectMeta {
  /// Unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. In Cloud Run, annotations with 'run.googleapis.com/' and 'autoscaling.knative.dev' are restricted, and the accepted annotations will be different depending on the resource type. * `autoscaling.knative.dev/maxScale`: Revision. * `autoscaling.knative.dev/minScale`: Revision. * `run.googleapis.com/binary-authorization-breakglass`: Service, Job, * `run.googleapis.com/binary-authorization`: Service, Job, Execution. * `run.googleapis.com/client-name`: All resources. * `run.googleapis.com/cloudsql-instances`: Revision, Execution. * `run.googleapis.com/container-dependencies`: Revision. * `run.googleapis.com/cpu-throttling`: Revision. * `run.googleapis.com/custom-audiences`: Service. * `run.googleapis.com/description`: Service. * `run.googleapis.com/disable-default-url`: Service. * `run.googleapis.com/encryption-key-shutdown-hours`: Revision * `run.googleapis.com/encryption-key`: Revision, Execution. * `run.googleapis.com/execution-environment`: Revision, Execution. * `run.googleapis.com/gc-traffic-tags`: Service. * `run.googleapis.com/ingress`: Service. * `run.googleapis.com/launch-stage`: Service, Job. * `run.googleapis.com/minScale`: Service (ALPHA) * `run.googleapis.com/network-interfaces`: Revision, Execution. * `run.googleapis.com/post-key-revocation-action-type`: Revision. * `run.googleapis.com/secrets`: Revision, Execution. * `run.googleapis.com/secure-session-agent`: Revision. * `run.googleapis.com/sessionAffinity`: Revision. * `run.googleapis.com/startup-cpu-boost`: Revision. * `run.googleapis.com/vpc-access-connector`: Revision, Execution. * `run.googleapis.com/vpc-access-egress`: Revision, Execution.
  final Map<String, String>? annotations;

  /// Not supported by Cloud Run
  final String? clusterName;

  /// UTC timestamp representing the server time when this object was created.
  final String? creationTimestamp;

  /// Not supported by Cloud Run
  final int? deletionGracePeriodSeconds;

  /// The read-only soft deletion timestamp for this resource. In Cloud Run, users are not able to set this field. Instead, they must call the corresponding Delete API.
  final String? deletionTimestamp;

  /// Not supported by Cloud Run
  final List<String>? finalizers;

  /// Not supported by Cloud Run
  final String? generateName;

  /// A system-provided sequence number representing a specific generation of the desired state.
  final int? generation;

  /// Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and routes.
  final Map<String, String>? labels;

  /// The name of the resource. Name is required when creating top-level resources (Service, Job), must be unique within a Cloud Run project/region, and cannot be changed once created.
  final String name;

  /// Defines the space within each name must be unique within a Cloud Run region. In Cloud Run, it must be project ID or number.
  final String namespace;

  /// Not supported by Cloud Run
  final List<OwnerReference>? ownerReferences;

  /// Opaque, system-generated value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server or omit the value to disable conflict-detection.
  final String? resourceVersion;

  /// URL representing this object.
  final String? selfLink;

  /// Unique, system-generated identifier for this resource.
  final String? uid;

  ObjectMeta({
    this.annotations,
    this.clusterName,
    this.creationTimestamp,
    this.deletionGracePeriodSeconds,
    this.deletionTimestamp,
    this.finalizers,
    this.generateName,
    this.generation,
    this.labels,
    required this.name,
    required this.namespace,
    this.ownerReferences,
    this.resourceVersion,
    this.selfLink,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final clusterNameValue = clusterName;
    if (clusterNameValue != null) {
      map['clusterName'] = clusterNameValue;
    }
    final creationTimestampValue = creationTimestamp;
    if (creationTimestampValue != null) {
      map['creationTimestamp'] = creationTimestampValue;
    }
    final deletionGracePeriodSecondsValue = deletionGracePeriodSeconds;
    if (deletionGracePeriodSecondsValue != null) {
      map['deletionGracePeriodSeconds'] = deletionGracePeriodSecondsValue;
    }
    final deletionTimestampValue = deletionTimestamp;
    if (deletionTimestampValue != null) {
      map['deletionTimestamp'] = deletionTimestampValue;
    }
    final finalizersValue = finalizers;
    if (finalizersValue != null) {
      map['finalizers'] = finalizersValue;
    }
    final generateNameValue = generateName;
    if (generateNameValue != null) {
      map['generateName'] = generateNameValue;
    }
    final generationValue = generation;
    if (generationValue != null) {
      map['generation'] = generationValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['name'] = name;
    map['namespace'] = namespace;
    final ownerReferencesValue = ownerReferences;
    if (ownerReferencesValue != null) {
      map['ownerReferences'] =
          Input.encodeList<OwnerReference, Map<String, dynamic>>(
              ownerReferencesValue, (value) => value.toMap());
    }
    final resourceVersionValue = resourceVersion;
    if (resourceVersionValue != null) {
      map['resourceVersion'] = resourceVersionValue;
    }
    final selfLinkValue = selfLink;
    if (selfLinkValue != null) {
      map['selfLink'] = selfLinkValue;
    }
    final uidValue = uid;
    if (uidValue != null) {
      map['uid'] = uidValue;
    }
    return map;
  }

  factory ObjectMeta.fromMap(Map<String, dynamic> map) {
    return ObjectMeta(
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      clusterName:
          map['clusterName'] == null ? null : map['clusterName'] as String,
      creationTimestamp: map['creationTimestamp'] == null
          ? null
          : map['creationTimestamp'] as String,
      deletionGracePeriodSeconds: map['deletionGracePeriodSeconds'] == null
          ? null
          : map['deletionGracePeriodSeconds'] as int,
      deletionTimestamp: map['deletionTimestamp'] == null
          ? null
          : map['deletionTimestamp'] as String,
      finalizers: map['finalizers'] == null
          ? null
          : (map['finalizers'] as List).cast<String>(),
      generateName:
          map['generateName'] == null ? null : map['generateName'] as String,
      generation: map['generation'] == null ? null : map['generation'] as int,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      namespace: map['namespace'] as String,
      ownerReferences: map['ownerReferences'] == null
          ? null
          : Input.decodeList<OwnerReference>(
              map['ownerReferences'],
              (value) => OwnerReference.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceVersion: map['resourceVersion'] == null
          ? null
          : map['resourceVersion'] as String,
      selfLink: map['selfLink'] == null ? null : map['selfLink'] as String,
      uid: map['uid'] == null ? null : map['uid'] as String,
    );
  }
}
