// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dlp_v2_get_job_trigger_args_doc}
/// Arguments for getJobTrigger.
/// {@endtemplate}
/// {@macro pulumi_dlp_v2_get_job_trigger_args_doc}
class GetJobTriggerArgs {
  final pulumi.Input<String> jobTriggerId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetJobTriggerArgs].
  /// [jobTriggerId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetJobTriggerArgs({
    required String jobTriggerId,
    required String location,
    String? project,
  }) :
      jobTriggerId = pulumi.Input.asInput<String>(jobTriggerId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobTriggerId': jobTriggerId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetJobTriggerArgs.fromMap(Map<String, dynamic> map) {
    return GetJobTriggerArgs(
      jobTriggerId: map['jobTriggerId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

