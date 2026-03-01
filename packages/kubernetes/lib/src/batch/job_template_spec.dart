// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta.dart';
import 'job_spec.dart';

/// JobTemplateSpec describes the data a Job should have when created from a template
class JobTemplateSpec {
  /// Standard object's metadata of the jobs created from this template. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final ObjectMeta? metadata;
  /// Specification of the desired behavior of the job. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  final JobSpec? spec;

  /// Creates a new [JobTemplateSpec].
  /// [metadata] Standard object's metadata of the jobs created from this template. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [spec] Specification of the desired behavior of the job. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  JobTemplateSpec({
    this.metadata,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'spec': ?spec == null ? null : spec!.toMap(),
    };
  }

  factory JobTemplateSpec.fromMap(Map<String, dynamic> map) {
    return JobTemplateSpec(
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: map['spec'] == null ? null : JobSpec.fromMap((map['spec'] as Map).cast<String, dynamic>()),
    );
  }
}

