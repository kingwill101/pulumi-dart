// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_sql_schedule.dart';
import 'scheduled_sql_scheduled_sql_configuration.dart';

/// Input properties used for looking up and filtering ScheduledSql resources.
class ScheduledSqlState {
  /// Job description.
  final pulumi.Input<String>? description;
  /// Task display name.
  final pulumi.Input<String>? displayName;
  /// A short description of struct.
  final pulumi.Input<String>? project;
  /// Schedule type. This field generally does not need to be specified. If you have strict scheduling requirements—for example, running an import job every Monday at 8:00 AM—you can use a cron expression. See `schedule` below.
  final pulumi.Input<ScheduledSqlSchedule>? schedule;
  /// Task configuration. See `scheduled_sql_configuration` below.
  final pulumi.Input<ScheduledSqlScheduledSqlConfiguration>? scheduledSqlConfiguration;
  /// The job name. The naming rules are as follows:
  /// - Job names must be unique within the same project.
  /// - The name can contain only lowercase letters, digits, hyphens (-), and underscores (_).
  /// - The name must start and end with a lowercase letter or digit.
  /// - The length must be between 2 and 64 characters.
  final pulumi.Input<String>? scheduledSqlName;
  /// The status of the scheduled SQL job.
  final pulumi.Input<String>? status;

  /// Creates a new [ScheduledSqlState].
  /// [description] Job description.
  /// [displayName] Task display name.
  /// [project] A short description of struct.
  /// [schedule] Schedule type. This field generally does not need to be specified. If you have strict scheduling requirements—for example, running an import job every Monday at 8:00 AM—you can use a cron expression. See `schedule` below.
  /// [scheduledSqlConfiguration] Task configuration. See `scheduled_sql_configuration` below.
  /// [scheduledSqlName] The job name. The naming rules are as follows:
  /// [status] The status of the scheduled SQL job.
  ScheduledSqlState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? project,
    pulumi.Output<ScheduledSqlSchedule>? schedule,
    pulumi.Output<ScheduledSqlScheduledSqlConfiguration>? scheduledSqlConfiguration,
    pulumi.Output<String>? scheduledSqlName,
    pulumi.Output<String>? status,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      project = pulumi.Input.asOptionalInput<String>(project),
      schedule = pulumi.Input.asOptionalInput<ScheduledSqlSchedule>(schedule),
      scheduledSqlConfiguration = pulumi.Input.asOptionalInput<ScheduledSqlScheduledSqlConfiguration>(scheduledSqlConfiguration),
      scheduledSqlName = pulumi.Input.asOptionalInput<String>(scheduledSqlName),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'project': ?project,
      'schedule': ?pulumi.Input.mapOptionalInputValue<ScheduledSqlSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'scheduledSqlConfiguration': ?pulumi.Input.mapOptionalInputValue<ScheduledSqlScheduledSqlConfiguration, Map<String, dynamic>>(scheduledSqlConfiguration, (value) => value.toMap()),
      'scheduledSqlName': ?scheduledSqlName,
      'status': ?status,
    };
  }

  factory ScheduledSqlState.fromMap(Map<String, dynamic> map) {
    return ScheduledSqlState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      schedule: map['schedule'] == null ? null : pulumi.Output.create<ScheduledSqlSchedule>(ScheduledSqlSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>())),
      scheduledSqlConfiguration: map['scheduledSqlConfiguration'] == null ? null : pulumi.Output.create<ScheduledSqlScheduledSqlConfiguration>(ScheduledSqlScheduledSqlConfiguration.fromMap((map['scheduledSqlConfiguration'] as Map).cast<String, dynamic>())),
      scheduledSqlName: map['scheduledSqlName'] == null ? null : pulumi.Output.create<String>(map['scheduledSqlName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

