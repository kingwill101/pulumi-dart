// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_get_job_args_doc}
/// Arguments for getJob.
/// {@endtemplate}
/// {@macro pulumi_appplatform_get_job_args_doc}
class GetJobArgs {
  /// The name of the Job resource.
  final pulumi.Input<String> jobName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetJobArgs].
  /// [jobName] The name of the Job resource.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  GetJobArgs({
    required pulumi.Output<String> jobName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      jobName = pulumi.Input.asInput<String>(jobName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobName': jobName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetJobArgs.fromMap(Map<String, dynamic> map) {
    return GetJobArgs(
      jobName: pulumi.Output.create<String>(map['jobName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

