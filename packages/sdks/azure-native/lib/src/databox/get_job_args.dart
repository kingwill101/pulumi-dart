// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databox_get_job_args_doc}
/// Arguments for getJob.
/// {@endtemplate}
/// {@macro pulumi_databox_get_job_args_doc}
class GetJobArgs {
  /// $expand is supported on details parameter for job, which provides details on the job stages.
  final pulumi.Input<String?>? expand;
  /// The name of the job Resource within the specified resource group. job names must be between 3 and 24 characters in length and use any alphanumeric and underscore only
  final pulumi.Input<String> jobName;
  /// The Resource Group Name
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetJobArgs].
  /// [expand] $expand is supported on details parameter for job, which provides details on the job stages.
  /// [jobName] The name of the job Resource within the specified resource group. job names must be between 3 and 24 characters in length and use any alphanumeric and underscore only
  /// [resourceGroupName] The Resource Group Name
  const GetJobArgs({
    this.expand,
    required this.jobName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'jobName': jobName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetJobArgs.fromMap(Map<String, dynamic> map) {
    return GetJobArgs(
      expand: (() { final guardedValue = map['expand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobName: pulumi.Input.fromValue(map['jobName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
