// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'invocation_config.dart';

/// The set of arguments for WorkflowConfig.
class WorkflowConfigArgs {
  /// Optional. Optional schedule (in cron format) for automatic execution of this workflow config.
  final Input<String>? cronSchedule;

  /// Optional. If left unset, a default InvocationConfig will be used.
  final Input<InvocationConfig>? invocationConfig;
  final Input<String>? location;
  final Input<String>? project;

  /// The name of the release config whose release_compilation_result should be executed. Must be in the format `projects/*/locations/*/repositories/*/releaseConfigs/*`.
  final Input<String> releaseConfig;
  final Input<String> repositoryId;

  /// Optional. Specifies the time zone to be used when interpreting cron_schedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  final Input<String>? timeZone;

  /// Required. The ID to use for the workflow config, which will become the final component of the workflow config's resource name.
  final Input<String> workflowConfigId;

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
      map['invocationConfig'] =
          Input.mapOptionalInputValue<InvocationConfig, Map<String, dynamic>>(
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
      cronSchedule: Input.asOptionalInput<String>(map['cronSchedule']),
      invocationConfig:
          Input.asOptionalInput<InvocationConfig>(map['invocationConfig']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      releaseConfig: Input.asInput<String>(map['releaseConfig']),
      repositoryId: Input.asInput<String>(map['repositoryId']),
      timeZone: Input.asOptionalInput<String>(map['timeZone']),
      workflowConfigId: Input.asInput<String>(map['workflowConfigId']),
    );
  }
}
