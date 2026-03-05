// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_error_report_configuration.dart';
import 'scheduled_query_last_run_summary.dart';
import 'scheduled_query_notification_configuration.dart';
import 'scheduled_query_recently_failed_run.dart';
import 'scheduled_query_schedule_configuration.dart';
import 'scheduled_query_target_configuration.dart';
import 'scheduled_query_timeouts.dart';

/// {@template pulumi_timestreamquery_scheduled_query_scheduled_query_args_doc}
/// The set of arguments for ScheduledQuery.
/// {@endtemplate}
/// {@macro pulumi_timestreamquery_scheduled_query_scheduled_query_args_doc}
class ScheduledQueryArgs {
  /// Configuration block for error reporting configuration. See below.
  final pulumi.Input<ScheduledQueryErrorReportConfiguration> errorReportConfiguration;
  /// ARN for the IAM role that Timestream will assume when running the scheduled query.
  final pulumi.Input<String> executionRoleArn;
  /// Amazon KMS key used to encrypt the scheduled query resource, at-rest. If not specified, the scheduled query resource will be encrypted with a Timestream owned Amazon KMS key. To specify a KMS key, use the key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix the name with "alias/". If `error_report_configuration` uses `SSE_KMS` as the encryption type, the same `kms_key_id` is used to encrypt the error report at rest.
  final pulumi.Input<String>? kmsKeyId;
  /// Runtime summary for the last scheduled query run.
  final pulumi.Input<List<ScheduledQueryLastRunSummary>>? lastRunSummaries;
  /// Name of the scheduled query.
  final pulumi.Input<String>? name;
  /// Configuration block for notification configuration for a scheduled query. A notification is sent by Timestream when a scheduled query is created, its state is updated, or when it is deleted. See below.
  final pulumi.Input<ScheduledQueryNotificationConfiguration> notificationConfiguration;
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

  /// Creates a new [ScheduledQueryArgs].
  /// [errorReportConfiguration] Configuration block for error reporting configuration. See below.
  /// [executionRoleArn] ARN for the IAM role that Timestream will assume when running the scheduled query.
  /// [kmsKeyId] Amazon KMS key used to encrypt the scheduled query resource, at-rest. If not specified, the scheduled query resource will be encrypted with a Timestream owned Amazon KMS key. To specify a KMS key, use the key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix the name with "alias/". If `error_report_configuration` uses `SSE_KMS` as the encryption type, the same `kms_key_id` is used to encrypt the error report at rest.
  /// [lastRunSummaries] Runtime summary for the last scheduled query run.
  /// [name] Name of the scheduled query.
  /// [notificationConfiguration] Configuration block for notification configuration for a scheduled query. A notification is sent by Timestream when a scheduled query is created, its state is updated, or when it is deleted. See below.
  /// [queryString] Query string to run. Parameter names can be specified in the query string using the `@` character followed by an identifier. The named parameter `@scheduled_runtime` is reserved and can be used in the query to get the time at which the query is scheduled to run. The timestamp calculated according to the `schedule_configuration` parameter, will be the value of `@scheduled_runtime` paramater for each query run. For example, consider an instance of a scheduled query executing on 2021-12-01 00:00:00. For this instance, the `@scheduled_runtime` parameter is initialized to the timestamp 2021-12-01 00:00:00 when invoking the query.
  /// [recentlyFailedRuns] Runtime summary for the last five failed scheduled query runs.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scheduleConfiguration] Configuration block for schedule configuration for the query. See below.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetConfiguration] Configuration block for writing the result of a query. See below.
  /// [timeouts] Optional.
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
    return <String, dynamic>{
      'errorReportConfiguration': pulumi.Input.mapInputValue<ScheduledQueryErrorReportConfiguration, Map<String, dynamic>>(errorReportConfiguration, (value) => value.toMap()),
      'executionRoleArn': executionRoleArn,
      'kmsKeyId': ?kmsKeyId,
      'lastRunSummaries': ?pulumi.Input.mapOptionalInputValue<List<ScheduledQueryLastRunSummary>, List<Map<String, dynamic>>>(lastRunSummaries, (value) => pulumi.Input.encodeList<ScheduledQueryLastRunSummary, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'notificationConfiguration': pulumi.Input.mapInputValue<ScheduledQueryNotificationConfiguration, Map<String, dynamic>>(notificationConfiguration, (value) => value.toMap()),
      'queryString': queryString,
      'recentlyFailedRuns': ?pulumi.Input.mapOptionalInputValue<List<ScheduledQueryRecentlyFailedRun>, List<Map<String, dynamic>>>(recentlyFailedRuns, (value) => pulumi.Input.encodeList<ScheduledQueryRecentlyFailedRun, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'scheduleConfiguration': pulumi.Input.mapInputValue<ScheduledQueryScheduleConfiguration, Map<String, dynamic>>(scheduleConfiguration, (value) => value.toMap()),
      'tags': ?tags,
      'targetConfiguration': pulumi.Input.mapInputValue<ScheduledQueryTargetConfiguration, Map<String, dynamic>>(targetConfiguration, (value) => value.toMap()),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ScheduledQueryTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ScheduledQueryArgs.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryArgs(
      errorReportConfiguration: pulumi.Input.fromValue(ScheduledQueryErrorReportConfiguration.fromMap((map['errorReportConfiguration']! as Map).cast<String, dynamic>())),
      executionRoleArn: pulumi.Input.fromValue(map['executionRoleArn'] as String),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastRunSummaries: (() { final guardedValue = map['lastRunSummaries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScheduledQueryLastRunSummary>(guardedValue, (value) => ScheduledQueryLastRunSummary.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationConfiguration: pulumi.Input.fromValue(ScheduledQueryNotificationConfiguration.fromMap((map['notificationConfiguration']! as Map).cast<String, dynamic>())),
      queryString: pulumi.Input.fromValue(map['queryString'] as String),
      recentlyFailedRuns: (() { final guardedValue = map['recentlyFailedRuns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScheduledQueryRecentlyFailedRun>(guardedValue, (value) => ScheduledQueryRecentlyFailedRun.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleConfiguration: pulumi.Input.fromValue(ScheduledQueryScheduleConfiguration.fromMap((map['scheduleConfiguration']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetConfiguration: pulumi.Input.fromValue(ScheduledQueryTargetConfiguration.fromMap((map['targetConfiguration']! as Map).cast<String, dynamic>())),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduledQueryTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

