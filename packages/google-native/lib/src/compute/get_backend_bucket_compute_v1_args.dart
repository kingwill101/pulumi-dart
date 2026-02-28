// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_backend_bucket_compute_v1_args_doc}
/// Arguments for getBackendBucket.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_backend_bucket_compute_v1_args_doc}
class GetBackendBucketComputeV1Args {
  final pulumi.Input<String> backendBucket;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBackendBucketComputeV1Args].
  /// [backendBucket] Required.
  /// [project] Optional.
  GetBackendBucketComputeV1Args({
    required String backendBucket,
    String? project,
  })  : backendBucket = pulumi.Input.asInput<String>(backendBucket),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backendBucket'] = backendBucket;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetBackendBucketComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetBackendBucketComputeV1Args(
      backendBucket: map['backendBucket'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
