// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'invocation_config.dart';

/// The set of arguments for WorkflowConfig.
class WorkflowConfigArgs {
  /// Optional. Optional schedule (in cron format) for automatic execution of this workflow config.
  final pulumi.Input<String>? cronSchedule;

  /// Optional. If left unset, a default InvocationConfig will be used.
  final pulumi.Input<InvocationConfig>? invocationConfig;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// The name of the release config whose release_compilation_result should be executed. Must be in the format `projects/*/locations/*/repositories/*/releaseConfigs/*`.
  final pulumi.Input<String> releaseConfig;
  final pulumi.Input<String> repositoryId;

  /// Optional. Specifies the time zone to be used when interpreting cron_schedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  final pulumi.Input<String>? timeZone;

  /// Required. The ID to use for the workflow config, which will become the final component of the workflow config's resource name.
  final pulumi.Input<String> workflowConfigId;

  WorkflowConfigArgs({
    this.cronSchedule,
    this.invocationConfig,
    this.location,
    this.project,
    required this.releaseConfig,
    required this.repositoryId,
    this.timeZone,
    required this.workflowConfigId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cronScheduleValue = cronSchedule;
    if (cronScheduleValue != null) {
      map['cronSchedule'] = cronScheduleValue;
    }
    final invocationConfigValue = invocationConfig;
    if (invocationConfigValue != null) {
      map['invocationConfig'] = pulumi.Input.mapOptionalInputValue<
              InvocationConfig, Map<String, dynamic>>(
          invocationConfigValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['releaseConfig'] = releaseConfig;
    map['repositoryId'] = repositoryId;
    final timeZoneValue = timeZone;
    if (timeZoneValue != null) {
      map['timeZone'] = timeZoneValue;
    }
    map['workflowConfigId'] = workflowConfigId;
    return map;
  }

  factory WorkflowConfigArgs.fromMap(Map<String, dynamic> map) {
    return WorkflowConfigArgs(
      cronSchedule: pulumi.Input.asOptionalInput<String>(map['cronSchedule']),
      invocationConfig: pulumi.Input.asOptionalInput<InvocationConfig>(
          map['invocationConfig']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      releaseConfig: pulumi.Input.asInput<String>(map['releaseConfig']),
      repositoryId: pulumi.Input.asInput<String>(map['repositoryId']),
      timeZone: pulumi.Input.asOptionalInput<String>(map['timeZone']),
      workflowConfigId: pulumi.Input.asInput<String>(map['workflowConfigId']),
    );
  }
}
