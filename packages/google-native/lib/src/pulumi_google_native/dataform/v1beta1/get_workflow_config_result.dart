// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'invocation_config_response.dart';
import 'scheduled_execution_record_response.dart';

/// Result data returned by getWorkflowConfig.
class GetWorkflowConfigResult {
  /// Optional. Optional schedule (in cron format) for automatic execution of this workflow config.
  final String cronSchedule;

  /// Optional. If left unset, a default InvocationConfig will be used.
  final InvocationConfigResponse invocationConfig;

  /// The workflow config's name.
  final String name;

  /// Records of the 10 most recent scheduled execution attempts, ordered in in descending order of `execution_time`. Updated whenever automatic creation of a workflow invocation is triggered by cron_schedule.
  final List<ScheduledExecutionRecordResponse> recentScheduledExecutionRecords;

  /// The name of the release config whose release_compilation_result should be executed. Must be in the format `projects/*/locations/*/repositories/*/releaseConfigs/*`.
  final String releaseConfig;

  /// Optional. Specifies the time zone to be used when interpreting cron_schedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  final String timeZone;

  GetWorkflowConfigResult({
    required this.cronSchedule,
    required this.invocationConfig,
    required this.name,
    required this.recentScheduledExecutionRecords,
    required this.releaseConfig,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cronSchedule'] = cronSchedule;
    map['invocationConfig'] = invocationConfig.toMap();
    map['name'] = name;
    map['recentScheduledExecutionRecords'] = pulumi.Input.encodeList<
            ScheduledExecutionRecordResponse, Map<String, dynamic>>(
        recentScheduledExecutionRecords, (value) => value.toMap());
    map['releaseConfig'] = releaseConfig;
    map['timeZone'] = timeZone;
    return map;
  }

  factory GetWorkflowConfigResult.fromMap(Map<String, dynamic> map) {
    return GetWorkflowConfigResult(
      cronSchedule: map['cronSchedule'] as String,
      invocationConfig: InvocationConfigResponse.fromMap(
          (map['invocationConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      recentScheduledExecutionRecords:
          pulumi.Input.decodeList<ScheduledExecutionRecordResponse>(
              map['recentScheduledExecutionRecords'],
              (value) => ScheduledExecutionRecordResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      releaseConfig: map['releaseConfig'] as String,
      timeZone: map['timeZone'] as String,
    );
  }
}
