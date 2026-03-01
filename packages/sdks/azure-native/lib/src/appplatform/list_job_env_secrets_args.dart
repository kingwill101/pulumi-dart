// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_list_job_env_secrets_args_doc}
/// Arguments for listJobEnvSecrets.
/// {@endtemplate}
/// {@macro pulumi_appplatform_list_job_env_secrets_args_doc}
class ListJobEnvSecretsArgs {
  /// The name of the Job resource.
  final pulumi.Input<String> jobName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ListJobEnvSecretsArgs].
  /// [jobName] The name of the Job resource.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  ListJobEnvSecretsArgs({
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

  factory ListJobEnvSecretsArgs.fromMap(Map<String, dynamic> map) {
    return ListJobEnvSecretsArgs(
      jobName: pulumi.Output.create<String>(map['jobName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

