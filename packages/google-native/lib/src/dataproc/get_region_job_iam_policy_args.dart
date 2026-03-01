// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1_get_region_job_iam_policy_args_doc}
/// Arguments for getRegionJobIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_get_region_job_iam_policy_args_doc}
class GetRegionJobIamPolicyArgs {
  final pulumi.Input<String> jobId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> regionId;

  /// Creates a new [GetRegionJobIamPolicyArgs].
  /// [jobId] Required.
  /// [project] Optional.
  /// [regionId] Required.
  GetRegionJobIamPolicyArgs({
    required String jobId,
    String? project,
    required String regionId,
  }) : jobId = pulumi.Input.asInput<String>(jobId),
       project = pulumi.Input.asOptionalInput<String>(project),
       regionId = pulumi.Input.asInput<String>(regionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobId': jobId,
      'project': ?project,
      'regionId': regionId,
    };
  }

  factory GetRegionJobIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionJobIamPolicyArgs(
      jobId: map['jobId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      regionId: map['regionId'] as String,
    );
  }
}
