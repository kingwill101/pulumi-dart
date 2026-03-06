// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_sql_schedule.dart';
import 'scheduled_sql_scheduled_sql_configuration.dart';

/// {@template pulumi_sls_scheduled_sql_scheduled_sql_args_doc}
/// The set of arguments for ScheduledSql.
/// {@endtemplate}
/// {@macro pulumi_sls_scheduled_sql_scheduled_sql_args_doc}
class ScheduledSqlArgs {
  /// Job description.
  final pulumi.Input<String>? description;
  /// Task display name.
  final pulumi.Input<String> displayName;
  /// A short description of struct.
  final pulumi.Input<String> project;
  /// Schedule type. This field generally does not need to be specified. If you have strict scheduling requirements—for example, running an import job every Monday at 8:00 AM—you can use a cron expression. See `schedule` below.
  final pulumi.Input<ScheduledSqlSchedule> schedule;
  /// Task configuration. See `scheduled_sql_configuration` below.
  final pulumi.Input<ScheduledSqlScheduledSqlConfiguration> scheduledSqlConfiguration;
  /// The job name. The naming rules are as follows:
  /// - Job names must be unique within the same project.
  /// - The name can contain only lowercase letters, digits, hyphens (-), and underscores (_).
  /// - The name must start and end with a lowercase letter or digit.
  /// - The length must be between 2 and 64 characters.
  final pulumi.Input<String> scheduledSqlName;
  /// The status of the scheduled SQL job.
  final pulumi.Input<String>? status;

  /// Creates a new [ScheduledSqlArgs].
  /// [description] Job description.
  /// [displayName] Task display name.
  /// [project] A short description of struct.
  /// [schedule] Schedule type. This field generally does not need to be specified. If you have strict scheduling requirements—for example, running an import job every Monday at 8:00 AM—you can use a cron expression. See `schedule` below.
  /// [scheduledSqlConfiguration] Task configuration. See `scheduled_sql_configuration` below.
  /// [scheduledSqlName] The job name. The naming rules are as follows:
  /// [status] The status of the scheduled SQL job.
  const ScheduledSqlArgs({
    this.description,
    required this.displayName,
    required this.project,
    required this.schedule,
    required this.scheduledSqlConfiguration,
    required this.scheduledSqlName,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'project': project,
      'schedule': pulumi.Input.mapInputValue<ScheduledSqlSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'scheduledSqlConfiguration': pulumi.Input.mapInputValue<ScheduledSqlScheduledSqlConfiguration, Map<String, dynamic>>(scheduledSqlConfiguration, (value) => value.toMap()),
      'scheduledSqlName': scheduledSqlName,
      'status': ?status,
    };
  }

  factory ScheduledSqlArgs.fromMap(Map<String, dynamic> map) {
    return ScheduledSqlArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      schedule: pulumi.Input.fromValue(ScheduledSqlSchedule.fromMap((map['schedule']! as Map).cast<String, dynamic>())),
      scheduledSqlConfiguration: pulumi.Input.fromValue(ScheduledSqlScheduledSqlConfiguration.fromMap((map['scheduledSqlConfiguration']! as Map).cast<String, dynamic>())),
      scheduledSqlName: pulumi.Input.fromValue(map['scheduledSqlName'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

