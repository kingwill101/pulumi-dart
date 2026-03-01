// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_jobs_v3_get_job_args_doc}
/// Arguments for getJob.
/// {@endtemplate}
/// {@macro pulumi_jobs_v3_get_job_args_doc}
class GetJobArgs {
  final pulumi.Input<String> jobId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetJobArgs].
  /// [jobId] Required.
  /// [project] Optional.
  GetJobArgs({required String jobId, String? project})
    : jobId = pulumi.Input.asInput<String>(jobId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'jobId': jobId, 'project': ?project};
  }

  factory GetJobArgs.fromMap(Map<String, dynamic> map) {
    return GetJobArgs(
      jobId: map['jobId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
