// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runbook_association_property.dart';
import 'schedule_association_property.dart';

/// {@template pulumi_automation_job_schedule_args_doc}
/// The set of arguments for JobSchedule.
/// {@endtemplate}
/// {@macro pulumi_automation_job_schedule_args_doc}
class JobScheduleArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// The job schedule name.
  final pulumi.Input<String>? jobScheduleId;
  /// Gets or sets a list of job properties.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the hybrid worker group that the scheduled job should run on.
  final pulumi.Input<String>? runOn;
  /// Gets or sets the runbook.
  final pulumi.Input<RunbookAssociationProperty> runbook;
  /// Gets or sets the schedule.
  final pulumi.Input<ScheduleAssociationProperty> schedule;

  /// Creates a new [JobScheduleArgs].
  /// [automationAccountName] The name of the automation account.
  /// [jobScheduleId] The job schedule name.
  /// [parameters] Gets or sets a list of job properties.
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [runOn] Gets or sets the hybrid worker group that the scheduled job should run on.
  /// [runbook] Gets or sets the runbook.
  /// [schedule] Gets or sets the schedule.
  JobScheduleArgs({
    required this.automationAccountName,
    this.jobScheduleId,
    this.parameters,
    required this.resourceGroupName,
    this.runOn,
    required this.runbook,
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'jobScheduleId': ?jobScheduleId,
      'parameters': ?parameters,
      'resourceGroupName': resourceGroupName,
      'runOn': ?runOn,
      'runbook': pulumi.Input.mapInputValue<RunbookAssociationProperty, Map<String, dynamic>>(runbook, (value) => value.toMap()),
      'schedule': pulumi.Input.mapInputValue<ScheduleAssociationProperty, Map<String, dynamic>>(schedule, (value) => value.toMap()),
    };
  }

  factory JobScheduleArgs.fromMap(Map<String, dynamic> map) {
    return JobScheduleArgs(
      automationAccountName: (map['automationAccountName'] as String).input(),
      jobScheduleId: map['jobScheduleId'] == null ? null : (map['jobScheduleId']! as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters']! as Map).cast<String, String>()).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      runOn: map['runOn'] == null ? null : (map['runOn']! as String).input(),
      runbook: (RunbookAssociationProperty.fromMap((map['runbook'] as Map).cast<String, dynamic>())).input(),
      schedule: (ScheduleAssociationProperty.fromMap((map['schedule'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

