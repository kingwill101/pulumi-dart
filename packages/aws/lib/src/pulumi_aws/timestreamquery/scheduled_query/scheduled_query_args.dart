// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../scheduled_query_error_report_configuration/scheduled_query_error_report_configuration.dart';
import '../scheduled_query_last_run_summary/scheduled_query_last_run_summary.dart';
import '../scheduled_query_notification_configuration/scheduled_query_notification_configuration.dart';
import '../scheduled_query_recently_failed_run/scheduled_query_recently_failed_run.dart';
import '../scheduled_query_schedule_configuration/scheduled_query_schedule_configuration.dart';
import '../scheduled_query_target_configuration/scheduled_query_target_configuration.dart';
import '../scheduled_query_timeouts/scheduled_query_timeouts.dart';

/// The set of arguments for ScheduledQuery.
class ScheduledQueryArgs {
  /// Configuration block for error reporting configuration. See below.
  final pulumi.Input<ScheduledQueryErrorReportConfiguration>
      errorReportConfiguration;

  /// ARN for the IAM role that Timestream will assume when running the scheduled query.
  final pulumi.Input<String> executionRoleArn;

  /// Amazon KMS key used to encrypt the scheduled query resource, at-rest. If not specified, the scheduled query resource will be encrypted with a Timestream owned Amazon KMS key. To specify a KMS key, use the key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix the name with "alias/". If `error_report_configuration` uses `SSE_KMS` as the encryption type, the same `kms_key_id` is used to encrypt the error report at rest.
  final pulumi.Input<String>? kmsKeyId;

  /// Runtime summary for the last scheduled query run.
  final pulumi.Input<List<ScheduledQueryLastRunSummary>>? lastRunSummaries;

  /// Name of the scheduled query.
  final pulumi.Input<String>? name;

  /// Configuration block for notification configuration for a scheduled query. A notification is sent by Timestream when a scheduled query is created, its state is updated, or when it is deleted. See below.
  final pulumi.Input<ScheduledQueryNotificationConfiguration>
      notificationConfiguration;

  /// Query string to run. Parameter names can be specified in the query string using the `@` character followed by an identifier. The named parameter `@scheduled_runtime` is reserved and can be used in the query to get the time at which the query is scheduled to run. The timestamp calculated according to the `schedule_configuration` parameter, will be the value of `@scheduled_runtime` paramater for each query run. For example, consider an instance of a scheduled query executing on 2021-12-01 00:00:00. For this instance, the `@scheduled_runtime` parameter is initialized to the timestamp 2021-12-01 00:00:00 when invoking the query.
  final pulumi.Input<String> queryString;

  /// Runtime summary for the last five failed scheduled query runs.
  final pulumi.Input<List<ScheduledQueryRecentlyFailedRun>>? recentlyFailedRuns;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Configuration block for schedule configuration for the query. See below.
  final pulumi.Input<ScheduledQueryScheduleConfiguration> scheduleConfiguration;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Configuration block for writing the result of a query. See below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<ScheduledQueryTargetConfiguration> targetConfiguration;
  final pulumi.Input<ScheduledQueryTimeouts>? timeouts;

  ScheduledQueryArgs({
    required this.errorReportConfiguration,
    required this.executionRoleArn,
    this.kmsKeyId,
    this.lastRunSummaries,
    this.name,
    required this.notificationConfiguration,
    required this.queryString,
    this.recentlyFailedRuns,
    this.region,
    required this.scheduleConfiguration,
    this.tags,
    required this.targetConfiguration,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['errorReportConfiguration'] = pulumi.Input.mapInputValue<
            ScheduledQueryErrorReportConfiguration, Map<String, dynamic>>(
        errorReportConfiguration, (value) => value.toMap());
    map['executionRoleArn'] = executionRoleArn;
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final lastRunSummariesValue = lastRunSummaries;
    if (lastRunSummariesValue != null) {
      map['lastRunSummaries'] = pulumi.Input.mapOptionalInputValue<
              List<ScheduledQueryLastRunSummary>, List<Map<String, dynamic>>>(
          lastRunSummariesValue,
          (value) => pulumi.Input.encodeList<ScheduledQueryLastRunSummary,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['notificationConfiguration'] = pulumi.Input.mapInputValue<
            ScheduledQueryNotificationConfiguration, Map<String, dynamic>>(
        notificationConfiguration, (value) => value.toMap());
    map['queryString'] = queryString;
    final recentlyFailedRunsValue = recentlyFailedRuns;
    if (recentlyFailedRunsValue != null) {
      map['recentlyFailedRuns'] = pulumi.Input.mapOptionalInputValue<
              List<ScheduledQueryRecentlyFailedRun>,
              List<Map<String, dynamic>>>(
          recentlyFailedRunsValue,
          (value) => pulumi.Input.encodeList<ScheduledQueryRecentlyFailedRun,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['scheduleConfiguration'] = pulumi.Input.mapInputValue<
        ScheduledQueryScheduleConfiguration,
        Map<String, dynamic>>(scheduleConfiguration, (value) => value.toMap());
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['targetConfiguration'] = pulumi.Input.mapInputValue<
        ScheduledQueryTargetConfiguration,
        Map<String, dynamic>>(targetConfiguration, (value) => value.toMap());
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          ScheduledQueryTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ScheduledQueryArgs.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryArgs(
      errorReportConfiguration:
          pulumi.Input.asInput<ScheduledQueryErrorReportConfiguration>(
              map['errorReportConfiguration']),
      executionRoleArn: pulumi.Input.asInput<String>(map['executionRoleArn']),
      kmsKeyId: pulumi.Input.asOptionalInput<String>(map['kmsKeyId']),
      lastRunSummaries:
          pulumi.Input.asOptionalInput<List<ScheduledQueryLastRunSummary>>(
              map['lastRunSummaries']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      notificationConfiguration:
          pulumi.Input.asInput<ScheduledQueryNotificationConfiguration>(
              map['notificationConfiguration']),
      queryString: pulumi.Input.asInput<String>(map['queryString']),
      recentlyFailedRuns:
          pulumi.Input.asOptionalInput<List<ScheduledQueryRecentlyFailedRun>>(
              map['recentlyFailedRuns']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      scheduleConfiguration:
          pulumi.Input.asInput<ScheduledQueryScheduleConfiguration>(
              map['scheduleConfiguration']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetConfiguration:
          pulumi.Input.asInput<ScheduledQueryTargetConfiguration>(
              map['targetConfiguration']),
      timeouts:
          pulumi.Input.asOptionalInput<ScheduledQueryTimeouts>(map['timeouts']),
    );
  }
}
