// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_run_v1_get_job_args_doc}
/// Arguments for getJob.
/// {@endtemplate}
/// {@macro pulumi_run_v1_get_job_args_doc}
class GetJobArgs {
  final pulumi.Input<String> jobId;
  final pulumi.Input<String> namespaceId;

  /// Creates a new [GetJobArgs].
  /// [jobId] Required.
  /// [namespaceId] Required.
  GetJobArgs({required String jobId, required String namespaceId})
    : jobId = pulumi.Input.asInput<String>(jobId),
      namespaceId = pulumi.Input.asInput<String>(namespaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'jobId': jobId, 'namespaceId': namespaceId};
  }

  factory GetJobArgs.fromMap(Map<String, dynamic> map) {
    return GetJobArgs(
      jobId: map['jobId'] as String,
      namespaceId: map['namespaceId'] as String,
    );
  }
}
