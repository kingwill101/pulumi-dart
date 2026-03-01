// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_job_target_group_args_doc}
/// Arguments for getJobTargetGroup.
/// {@endtemplate}
/// {@macro pulumi_sql_get_job_target_group_args_doc}
class GetJobTargetGroupArgs {
  /// The name of the job agent.
  final pulumi.Input<String> jobAgentName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// The name of the target group.
  final pulumi.Input<String> targetGroupName;

  /// Creates a new [GetJobTargetGroupArgs].
  /// [jobAgentName] The name of the job agent.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  /// [targetGroupName] The name of the target group.
  GetJobTargetGroupArgs({
    required String jobAgentName,
    required String resourceGroupName,
    required String serverName,
    required String targetGroupName,
  }) :
      jobAgentName = pulumi.Input.asInput<String>(jobAgentName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName),
      targetGroupName = pulumi.Input.asInput<String>(targetGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobAgentName': jobAgentName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'targetGroupName': targetGroupName,
    };
  }

  factory GetJobTargetGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetJobTargetGroupArgs(
      jobAgentName: map['jobAgentName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serverName: map['serverName'] as String,
      targetGroupName: map['targetGroupName'] as String,
    );
  }
}

