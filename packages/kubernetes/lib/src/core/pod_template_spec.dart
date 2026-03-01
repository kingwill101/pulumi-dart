// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta.dart';
import 'pod_spec.dart';

/// PodTemplateSpec describes the data a pod should have when created from a template
class PodTemplateSpec {
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final ObjectMeta? metadata;
  /// Specification of the desired behavior of the pod. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  final PodSpec? spec;

  /// Creates a new [PodTemplateSpec].
  /// [metadata] Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [spec] Specification of the desired behavior of the pod. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  PodTemplateSpec({
    this.metadata,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'spec': ?spec == null ? null : spec!.toMap(),
    };
  }

  factory PodTemplateSpec.fromMap(Map<String, dynamic> map) {
    return PodTemplateSpec(
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: map['spec'] == null ? null : PodSpec.fromMap((map['spec'] as Map).cast<String, dynamic>()),
    );
  }
}

