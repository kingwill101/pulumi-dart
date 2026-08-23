// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_list_job_execution_env_secrets_args_doc}
/// Arguments for listJobExecutionEnvSecrets.
/// {@endtemplate}
/// {@macro pulumi_appplatform_list_job_execution_env_secrets_args_doc}
class ListJobExecutionEnvSecretsArgs {
  /// The name of the Job execution.
  final pulumi.Input<String> jobExecutionName;
  /// The name of the Job resource.
  final pulumi.Input<String> jobName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ListJobExecutionEnvSecretsArgs].
  /// [jobExecutionName] The name of the Job execution.
  /// [jobName] The name of the Job resource.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  const ListJobExecutionEnvSecretsArgs({
    required this.jobExecutionName,
    required this.jobName,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobExecutionName': jobExecutionName,
      'jobName': jobName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory ListJobExecutionEnvSecretsArgs.fromMap(Map<String, dynamic> map) {
    return ListJobExecutionEnvSecretsArgs(
      jobExecutionName: pulumi.Input.fromValue(map['jobExecutionName'] as String),
      jobName: pulumi.Input.fromValue(map['jobName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
