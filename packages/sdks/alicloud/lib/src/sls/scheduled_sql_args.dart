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
  ScheduledSqlArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    required pulumi.Output<String> project,
    required pulumi.Output<ScheduledSqlSchedule> schedule,
    required pulumi.Output<ScheduledSqlScheduledSqlConfiguration> scheduledSqlConfiguration,
    required pulumi.Output<String> scheduledSqlName,
    pulumi.Output<String>? status,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      project = pulumi.Input.asInput<String>(project),
      schedule = pulumi.Input.asInput<ScheduledSqlSchedule>(schedule),
      scheduledSqlConfiguration = pulumi.Input.asInput<ScheduledSqlScheduledSqlConfiguration>(scheduledSqlConfiguration),
      scheduledSqlName = pulumi.Input.asInput<String>(scheduledSqlName),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      project: pulumi.Output.create<String>(map['project'] as String),
      schedule: pulumi.Output.create<ScheduledSqlSchedule>(ScheduledSqlSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>())),
      scheduledSqlConfiguration: pulumi.Output.create<ScheduledSqlScheduledSqlConfiguration>(ScheduledSqlScheduledSqlConfiguration.fromMap((map['scheduledSqlConfiguration'] as Map).cast<String, dynamic>())),
      scheduledSqlName: pulumi.Output.create<String>(map['scheduledSqlName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

