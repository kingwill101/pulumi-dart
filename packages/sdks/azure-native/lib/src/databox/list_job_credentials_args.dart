// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databox_list_job_credentials_args_doc}
/// Arguments for listJobCredentials.
/// {@endtemplate}
/// {@macro pulumi_databox_list_job_credentials_args_doc}
class ListJobCredentialsArgs {
  /// The name of the job Resource within the specified resource group. job names must be between 3 and 24 characters in length and use any alphanumeric and underscore only
  final pulumi.Input<String> jobName;
  /// The Resource Group Name
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListJobCredentialsArgs].
  /// [jobName] The name of the job Resource within the specified resource group. job names must be between 3 and 24 characters in length and use any alphanumeric and underscore only
  /// [resourceGroupName] The Resource Group Name
  ListJobCredentialsArgs({
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

  factory ListJobCredentialsArgs.fromMap(Map<String, dynamic> map) {
    return ListJobCredentialsArgs(
      jobName: pulumi.Output.create<String>(map['jobName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

