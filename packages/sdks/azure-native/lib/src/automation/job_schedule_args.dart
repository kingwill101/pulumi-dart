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
    required pulumi.Output<String> automationAccountName,
    pulumi.Output<String>? jobScheduleId,
    pulumi.Output<Map<String, String>>? parameters,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? runOn,
    required pulumi.Output<RunbookAssociationProperty> runbook,
    required pulumi.Output<ScheduleAssociationProperty> schedule,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      jobScheduleId = pulumi.Input.asOptionalInput<String>(jobScheduleId),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      runOn = pulumi.Input.asOptionalInput<String>(runOn),
      runbook = pulumi.Input.asInput<RunbookAssociationProperty>(runbook),
      schedule = pulumi.Input.asInput<ScheduleAssociationProperty>(schedule);

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
      automationAccountName: pulumi.Output.create<String>(map['automationAccountName'] as String),
      jobScheduleId: map['jobScheduleId'] == null ? null : pulumi.Output.create<String>(map['jobScheduleId'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      runOn: map['runOn'] == null ? null : pulumi.Output.create<String>(map['runOn'] as String),
      runbook: pulumi.Output.create<RunbookAssociationProperty>(RunbookAssociationProperty.fromMap((map['runbook'] as Map).cast<String, dynamic>())),
      schedule: pulumi.Output.create<ScheduleAssociationProperty>(ScheduleAssociationProperty.fromMap((map['schedule'] as Map).cast<String, dynamic>())),
    );
  }
}

