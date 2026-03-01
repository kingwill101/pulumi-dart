// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_get_job_args_doc}
/// Arguments for getJob.
/// {@endtemplate}
/// {@macro pulumi_app_get_job_args_doc}
class GetJobArgs {
  /// Job Name
  final pulumi.Input<String> jobName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetJobArgs].
  /// [jobName] Job Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetJobArgs({
    required pulumi.Output<String> jobName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      jobName = pulumi.Input.asInput<String>(jobName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobName': jobName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetJobArgs.fromMap(Map<String, dynamic> map) {
    return GetJobArgs(
      jobName: pulumi.Output.create<String>(map['jobName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

