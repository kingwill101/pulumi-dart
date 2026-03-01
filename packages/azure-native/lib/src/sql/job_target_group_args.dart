// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_target.dart';

/// {@template pulumi_sql_job_target_group_args_doc}
/// The set of arguments for JobTargetGroup.
/// {@endtemplate}
/// {@macro pulumi_sql_job_target_group_args_doc}
class JobTargetGroupArgs {
  /// The name of the job agent.
  final pulumi.Input<String> jobAgentName;
  /// Members of the target group.
  final pulumi.Input<List<JobTarget>> members;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// The name of the target group.
  final pulumi.Input<String>? targetGroupName;

  /// Creates a new [JobTargetGroupArgs].
  /// [jobAgentName] The name of the job agent.
  /// [members] Members of the target group.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  /// [targetGroupName] The name of the target group.
  JobTargetGroupArgs({
    required String jobAgentName,
    required List<JobTarget> members,
    required String resourceGroupName,
    required String serverName,
    String? targetGroupName,
  }) :
      jobAgentName = pulumi.Input.asInput<String>(jobAgentName),
      members = pulumi.Input.asInput<List<JobTarget>>(members),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName),
      targetGroupName = pulumi.Input.asOptionalInput<String>(targetGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobAgentName': jobAgentName,
      'members': pulumi.Input.mapInputValue<List<JobTarget>, List<Map<String, dynamic>>>(members, (value) => pulumi.Input.encodeList<JobTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'targetGroupName': ?targetGroupName,
    };
  }

  factory JobTargetGroupArgs.fromMap(Map<String, dynamic> map) {
    return JobTargetGroupArgs(
      jobAgentName: map['jobAgentName'] as String,
      members: pulumi.Input.decodeList<JobTarget>(map['members'], (value) => JobTarget.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      serverName: map['serverName'] as String,
      targetGroupName: map['targetGroupName'] == null ? null : map['targetGroupName'] as String,
    );
  }
}

