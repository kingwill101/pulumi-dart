// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_importexport_get_job_args_doc}
/// Arguments for getJob.
/// {@endtemplate}
/// {@macro pulumi_importexport_get_job_args_doc}
class GetJobArgs {
  /// The name of the import/export job.
  final pulumi.Input<String> jobName;
  /// The resource group name uniquely identifies the resource group within the user subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetJobArgs].
  /// [jobName] The name of the import/export job.
  /// [resourceGroupName] The resource group name uniquely identifies the resource group within the user subscription.
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

