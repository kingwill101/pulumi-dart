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
  final pulumi.Input<String?>? jobScheduleId;
  /// Gets or sets a list of job properties.
  final pulumi.Input<Map<String, String>?>? parameters;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the hybrid worker group that the scheduled job should run on.
  final pulumi.Input<String?>? runOn;
  /// Gets or sets the runbook.
  final pulumi.Input<RunbookAssociationProperty> runbook;
  /// Gets or sets the schedule.
  final pulumi.Input<ScheduleAssociationProperty> schedule;

  /// Creates a new [JobScheduleArgs].
  /// [automationAccountName] The name of the automation account.
  /// [jobScheduleId] The job schedule name.
  /// [parameters] Gets or sets a list of job properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [runOn] Gets or sets the hybrid worker group that the scheduled job should run on.
  /// [runbook] Gets or sets the runbook.
  /// [schedule] Gets or sets the schedule.
  const JobScheduleArgs({
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
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      jobScheduleId: (() { final guardedValue = map['jobScheduleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      runOn: (() { final guardedValue = map['runOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runbook: pulumi.Input.fromValue(RunbookAssociationProperty.fromMap((map['runbook']! as Map).cast<String, dynamic>())),
      schedule: pulumi.Input.fromValue(ScheduleAssociationProperty.fromMap((map['schedule']! as Map).cast<String, dynamic>())),
    );
  }
}
