// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_job_schedule_args_doc}
/// Arguments for getJobSchedule.
/// {@endtemplate}
/// {@macro pulumi_automation_get_job_schedule_args_doc}
class GetJobScheduleArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// The job schedule name.
  final pulumi.Input<String> jobScheduleId;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetJobScheduleArgs].
  /// [automationAccountName] The name of the automation account.
  /// [jobScheduleId] The job schedule name.
  /// [resourceGroupName] Name of an Azure Resource group.
  GetJobScheduleArgs({
    required pulumi.Output<String> automationAccountName,
    required pulumi.Output<String> jobScheduleId,
    required pulumi.Output<String> resourceGroupName,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      jobScheduleId = pulumi.Input.asInput<String>(jobScheduleId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'jobScheduleId': jobScheduleId,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetJobScheduleArgs.fromMap(Map<String, dynamic> map) {
    return GetJobScheduleArgs(
      automationAccountName: pulumi.Output.create<String>(map['automationAccountName'] as String),
      jobScheduleId: pulumi.Output.create<String>(map['jobScheduleId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

