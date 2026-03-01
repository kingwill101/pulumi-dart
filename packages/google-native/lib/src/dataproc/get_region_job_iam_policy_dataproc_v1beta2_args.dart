// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1beta2_get_region_job_iam_policy_dataproc_v1beta2_args_doc}
/// Arguments for getRegionJobIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1beta2_get_region_job_iam_policy_dataproc_v1beta2_args_doc}
class GetRegionJobIamPolicyDataprocV1beta2Args {
  final pulumi.Input<String> jobId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> regionId;

  /// Creates a new [GetRegionJobIamPolicyDataprocV1beta2Args].
  /// [jobId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [regionId] Required.
  GetRegionJobIamPolicyDataprocV1beta2Args({
    required String jobId,
    int? optionsRequestedPolicyVersion,
    String? project,
    required String regionId,
  }) : jobId = pulumi.Input.asInput<String>(jobId),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       regionId = pulumi.Input.asInput<String>(regionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobId': jobId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'regionId': regionId,
    };
  }

  factory GetRegionJobIamPolicyDataprocV1beta2Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRegionJobIamPolicyDataprocV1beta2Args(
      jobId: map['jobId'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      regionId: map['regionId'] as String,
    );
  }
}
