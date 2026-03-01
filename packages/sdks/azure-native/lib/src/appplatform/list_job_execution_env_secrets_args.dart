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
  ListJobExecutionEnvSecretsArgs({
    required pulumi.Output<String> jobExecutionName,
    required pulumi.Output<String> jobName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      jobExecutionName = pulumi.Input.asInput<String>(jobExecutionName),
      jobName = pulumi.Input.asInput<String>(jobName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

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
      jobExecutionName: pulumi.Output.create<String>(map['jobExecutionName'] as String),
      jobName: pulumi.Output.create<String>(map['jobName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

