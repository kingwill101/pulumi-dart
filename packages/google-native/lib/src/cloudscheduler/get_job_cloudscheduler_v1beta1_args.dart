// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudscheduler_v1beta1_get_job_cloudscheduler_v1beta1_args_doc}
/// Arguments for getJob.
/// {@endtemplate}
/// {@macro pulumi_cloudscheduler_v1beta1_get_job_cloudscheduler_v1beta1_args_doc}
class GetJobCloudschedulerV1beta1Args {
  final pulumi.Input<String> jobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetJobCloudschedulerV1beta1Args].
  /// [jobId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetJobCloudschedulerV1beta1Args({
    required String jobId,
    required String location,
    String? project,
  }) :
      jobId = pulumi.Input.asInput<String>(jobId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobId': jobId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetJobCloudschedulerV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetJobCloudschedulerV1beta1Args(
      jobId: map['jobId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

