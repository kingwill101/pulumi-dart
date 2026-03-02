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
    required this.jobName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobName': jobName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetJobArgs.fromMap(Map<String, dynamic> map) {
    return GetJobArgs(
      jobName: (map['jobName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

