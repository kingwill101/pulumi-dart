// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_list_job_secrets_args_doc}
/// Arguments for listJobSecrets.
/// {@endtemplate}
/// {@macro pulumi_app_list_job_secrets_args_doc}
class ListJobSecretsArgs {
  /// Job Name
  final pulumi.Input<String> jobName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListJobSecretsArgs].
  /// [jobName] Job Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListJobSecretsArgs({required this.jobName, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobName': jobName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListJobSecretsArgs.fromMap(Map<String, dynamic> map) {
    return ListJobSecretsArgs(
      jobName: pulumi.Input.fromValue(map['jobName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
