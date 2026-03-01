// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_job_args_doc}
/// Arguments for getJob.
/// {@endtemplate}
/// {@macro pulumi_sql_get_job_args_doc}
class GetJobArgs {
  /// The name of the job agent.
  final pulumi.Input<String> jobAgentName;
  /// The name of the job to get.
  final pulumi.Input<String> jobName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetJobArgs].
  /// [jobAgentName] The name of the job agent.
  /// [jobName] The name of the job to get.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  GetJobArgs({
    required String jobAgentName,
    required String jobName,
    required String resourceGroupName,
    required String serverName,
  }) :
      jobAgentName = pulumi.Input.asInput<String>(jobAgentName),
      jobName = pulumi.Input.asInput<String>(jobName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobAgentName': jobAgentName,
      'jobName': jobName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetJobArgs.fromMap(Map<String, dynamic> map) {
    return GetJobArgs(
      jobAgentName: map['jobAgentName'] as String,
      jobName: map['jobName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serverName: map['serverName'] as String,
    );
  }
}

