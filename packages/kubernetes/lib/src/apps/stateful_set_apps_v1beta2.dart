// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta.dart';
import 'stateful_set_spec_apps_v1beta2.dart';
import 'stateful_set_status_apps_v1beta2.dart';

/// StatefulSet represents a set of pods with consistent identities. Identities are defined as:
/// - Network: A single stable DNS and hostname.
/// - Storage: As many VolumeClaims as requested.
/// The StatefulSet guarantees that a given network identity will always map to the same storage identity.
///
/// This resource waits until its status is ready before registering success
/// for create/update, and populating output properties from the current state of the resource.
/// The following conditions are used to determine whether the resource creation has
/// succeeded or failed:
///
/// 1. The value of 'spec.replicas' matches '.status.replicas', '.status.currentReplicas',
/// and '.status.readyReplicas'.
/// 2. The value of '.status.updateRevision' matches '.status.currentRevision'.
///
/// If the StatefulSet has not reached a Ready state after 10 minutes, it will
/// time out and mark the resource update as Failed. You can override the default timeout value
/// by setting the 'customTimeouts' option on the resource.
class StatefulSetAppsV1beta2 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  final ObjectMeta? metadata;
  /// Spec defines the desired identities of pods in this set.
  final StatefulSetSpecAppsV1beta2? spec;
  /// Status is the current status of Pods in this StatefulSet. This data may be out of date by some window of time.
  final StatefulSetStatusAppsV1beta2? status;

  /// Creates a new [StatefulSetAppsV1beta2].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Optional.
  /// [spec] Spec defines the desired identities of pods in this set.
  /// [status] Status is the current status of Pods in this StatefulSet. This data may be out of date by some window of time.
  StatefulSetAppsV1beta2({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'spec': ?spec == null ? null : spec!.toMap(),
      'status': ?status == null ? null : status!.toMap(),
    };
  }

  factory StatefulSetAppsV1beta2.fromMap(Map<String, dynamic> map) {
    return StatefulSetAppsV1beta2(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: map['spec'] == null ? null : StatefulSetSpecAppsV1beta2.fromMap((map['spec'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : StatefulSetStatusAppsV1beta2.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

