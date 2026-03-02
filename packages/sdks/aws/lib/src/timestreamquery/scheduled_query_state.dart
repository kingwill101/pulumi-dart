// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_error_report_configuration.dart';
import 'scheduled_query_last_run_summary.dart';
import 'scheduled_query_notification_configuration.dart';
import 'scheduled_query_recently_failed_run.dart';
import 'scheduled_query_schedule_configuration.dart';
import 'scheduled_query_target_configuration.dart';
import 'scheduled_query_timeouts.dart';

/// Input properties used for looking up and filtering ScheduledQuery resources.
class ScheduledQueryState {
  /// ARN of the Scheduled Query.
  final pulumi.Input<String>? arn;
  /// Creation time for the scheduled query.
  final pulumi.Input<String>? creationTime;
  /// Configuration block for error reporting configuration. See below.
  final pulumi.Input<ScheduledQueryErrorReportConfiguration>? errorReportConfiguration;
  /// ARN for the IAM role that Timestream will assume when running the scheduled query.
  final pulumi.Input<String>? executionRoleArn;
  /// Amazon KMS key used to encrypt the scheduled query resource, at-rest. If not specified, the scheduled query resource will be encrypted with a Timestream owned Amazon KMS key. To specify a KMS key, use the key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix the name with "alias/". If `error_report_configuration` uses `SSE_KMS` as the encryption type, the same `kms_key_id` is used to encrypt the error report at rest.
  final pulumi.Input<String>? kmsKeyId;
  /// Runtime summary for the last scheduled query run.
  final pulumi.Input<List<ScheduledQueryLastRunSummary>>? lastRunSummaries;
  /// Name of the scheduled query.
  final pulumi.Input<String>? name;
  /// Next time the scheduled query is scheduled to run.
  final pulumi.Input<String>? nextInvocationTime;
  /// Configuration block for notification configuration for a scheduled query. A notification is sent by Timestream when a scheduled query is created, its state is updated, or when it is deleted. See below.
  final pulumi.Input<ScheduledQueryNotificationConfiguration>? notificationConfiguration;
  /// Last time the scheduled query was run.
  final pulumi.Input<String>? previousInvocationTime;
  /// Query string to run. Parameter names can be specified in the query string using the `@` character followed by an identifier. The named parameter `@scheduled_runtime` is reserved and can be used in the query to get the time at which the query is scheduled to run. The timestamp calculated according to the `schedule_configuration` parameter, will be the value of `@scheduled_runtime` paramater for each query run. For example, consider an instance of a scheduled query executing on 2021-12-01 00:00:00. For this instance, the `@scheduled_runtime` parameter is initialized to the timestamp 2021-12-01 00:00:00 when invoking the query.
  final pulumi.Input<String>? queryString;
  /// Runtime summary for the last five failed scheduled query runs.
  final pulumi.Input<List<ScheduledQueryRecentlyFailedRun>>? recentlyFailedRuns;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block for schedule configuration for the query. See below.
  final pulumi.Input<ScheduledQueryScheduleConfiguration>? scheduleConfiguration;
  /// State of the scheduled query, either `ENABLED` or `DISABLED`.
  final pulumi.Input<String>? state;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Configuration block for writing the result of a query. See below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<ScheduledQueryTargetConfiguration>? targetConfiguration;
  final pulumi.Input<ScheduledQueryTimeouts>? timeouts;

  /// Creates a new [ScheduledQueryState].
  /// [arn] ARN of the Scheduled Query.
  /// [creationTime] Creation time for the scheduled query.
  /// [errorReportConfiguration] Configuration block for error reporting configuration. See below.
  /// [executionRoleArn] ARN for the IAM role that Timestream will assume when running the scheduled query.
  /// [kmsKeyId] Amazon KMS key used to encrypt the scheduled query resource, at-rest. If not specified, the scheduled query resource will be encrypted with a Timestream owned Amazon KMS key. To specify a KMS key, use the key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix the name with "alias/". If `error_report_configuration` uses `SSE_KMS` as the encryption type, the same `kms_key_id` is used to encrypt the error report at rest.
  /// [lastRunSummaries] Runtime summary for the last scheduled query run.
  /// [name] Name of the scheduled query.
  /// [nextInvocationTime] Next time the scheduled query is scheduled to run.
  /// [notificationConfiguration] Configuration block for notification configuration for a scheduled query. A notification is sent by Timestream when a scheduled query is created, its state is updated, or when it is deleted. See below.
  /// [previousInvocationTime] Last time the scheduled query was run.
  /// [queryString] Query string to run. Parameter names can be specified in the query string using the `@` character followed by an identifier. The named parameter `@scheduled_runtime` is reserved and can be used in the query to get the time at which the query is scheduled to run. The timestamp calculated according to the `schedule_configuration` parameter, will be the value of `@scheduled_runtime` paramater for each query run. For example, consider an instance of a scheduled query executing on 2021-12-01 00:00:00. For this instance, the `@scheduled_runtime` parameter is initialized to the timestamp 2021-12-01 00:00:00 when invoking the query.
  /// [recentlyFailedRuns] Runtime summary for the last five failed scheduled query runs.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scheduleConfiguration] Configuration block for schedule configuration for the query. See below.
  /// [state] State of the scheduled query, either `ENABLED` or `DISABLED`.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [targetConfiguration] Configuration block for writing the result of a query. See below.
  /// [timeouts] Optional.
  ScheduledQueryState({
    this.arn,
    this.creationTime,
    this.errorReportConfiguration,
    this.executionRoleArn,
    this.kmsKeyId,
    this.lastRunSummaries,
    this.name,
    this.nextInvocationTime,
    this.notificationConfiguration,
    this.previousInvocationTime,
    this.queryString,
    this.recentlyFailedRuns,
    this.region,
    this.scheduleConfiguration,
    this.state,
    this.tags,
    this.tagsAll,
    this.targetConfiguration,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'creationTime': ?creationTime,
      'errorReportConfiguration': ?pulumi.Input.mapOptionalInputValue<ScheduledQueryErrorReportConfiguration, Map<String, dynamic>>(errorReportConfiguration, (value) => value.toMap()),
      'executionRoleArn': ?executionRoleArn,
      'kmsKeyId': ?kmsKeyId,
      'lastRunSummaries': ?pulumi.Input.mapOptionalInputValue<List<ScheduledQueryLastRunSummary>, List<Map<String, dynamic>>>(lastRunSummaries, (value) => pulumi.Input.encodeList<ScheduledQueryLastRunSummary, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'nextInvocationTime': ?nextInvocationTime,
      'notificationConfiguration': ?pulumi.Input.mapOptionalInputValue<ScheduledQueryNotificationConfiguration, Map<String, dynamic>>(notificationConfiguration, (value) => value.toMap()),
      'previousInvocationTime': ?previousInvocationTime,
      'queryString': ?queryString,
      'recentlyFailedRuns': ?pulumi.Input.mapOptionalInputValue<List<ScheduledQueryRecentlyFailedRun>, List<Map<String, dynamic>>>(recentlyFailedRuns, (value) => pulumi.Input.encodeList<ScheduledQueryRecentlyFailedRun, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'scheduleConfiguration': ?pulumi.Input.mapOptionalInputValue<ScheduledQueryScheduleConfiguration, Map<String, dynamic>>(scheduleConfiguration, (value) => value.toMap()),
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targetConfiguration': ?pulumi.Input.mapOptionalInputValue<ScheduledQueryTargetConfiguration, Map<String, dynamic>>(targetConfiguration, (value) => value.toMap()),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ScheduledQueryTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ScheduledQueryState.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      creationTime: map['creationTime'] == null ? null : (map['creationTime'] as String).input(),
      errorReportConfiguration: map['errorReportConfiguration'] == null ? null : (ScheduledQueryErrorReportConfiguration.fromMap((map['errorReportConfiguration'] as Map).cast<String, dynamic>())).input(),
      executionRoleArn: map['executionRoleArn'] == null ? null : (map['executionRoleArn'] as String).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      lastRunSummaries: map['lastRunSummaries'] == null ? null : (pulumi.Input.decodeList<ScheduledQueryLastRunSummary>(map['lastRunSummaries'], (value) => ScheduledQueryLastRunSummary.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      nextInvocationTime: map['nextInvocationTime'] == null ? null : (map['nextInvocationTime'] as String).input(),
      notificationConfiguration: map['notificationConfiguration'] == null ? null : (ScheduledQueryNotificationConfiguration.fromMap((map['notificationConfiguration'] as Map).cast<String, dynamic>())).input(),
      previousInvocationTime: map['previousInvocationTime'] == null ? null : (map['previousInvocationTime'] as String).input(),
      queryString: map['queryString'] == null ? null : (map['queryString'] as String).input(),
      recentlyFailedRuns: map['recentlyFailedRuns'] == null ? null : (pulumi.Input.decodeList<ScheduledQueryRecentlyFailedRun>(map['recentlyFailedRuns'], (value) => ScheduledQueryRecentlyFailedRun.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      scheduleConfiguration: map['scheduleConfiguration'] == null ? null : (ScheduledQueryScheduleConfiguration.fromMap((map['scheduleConfiguration'] as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      targetConfiguration: map['targetConfiguration'] == null ? null : (ScheduledQueryTargetConfiguration.fromMap((map['targetConfiguration'] as Map).cast<String, dynamic>())).input(),
      timeouts: map['timeouts'] == null ? null : (ScheduledQueryTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

