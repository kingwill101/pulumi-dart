// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_recently_failed_run_error_report_location.dart';
import 'scheduled_query_recently_failed_run_execution_stat.dart';
import 'scheduled_query_recently_failed_run_query_insights_response.dart';

class ScheduledQueryRecentlyFailedRun {
  /// S3 location for error report.
  final pulumi.Input<List<ScheduledQueryRecentlyFailedRunErrorReportLocation>>?
  errorReportLocations;

  /// Statistics for a single scheduled query run.
  final pulumi.Input<List<ScheduledQueryRecentlyFailedRunExecutionStat>>?
  executionStats;

  /// Error message for the scheduled query in case of failure. You might have to look at the error report to get more detailed error reasons.
  final pulumi.Input<String>? failureReason;

  /// InvocationTime for this run. This is the time at which the query is scheduled to run. Parameter `@scheduled_runtime` can be used in the query to get the value.
  final pulumi.Input<String>? invocationTime;

  /// Various insights and metrics related to the run summary of the scheduled query.
  final pulumi.Input<
    List<ScheduledQueryRecentlyFailedRunQueryInsightsResponse>
  >?
  queryInsightsResponses;

  /// Status of a scheduled query run. Valid values: `AUTO_TRIGGER_SUCCESS`, `AUTO_TRIGGER_FAILURE`, `MANUAL_TRIGGER_SUCCESS`, `MANUAL_TRIGGER_FAILURE`.
  final pulumi.Input<String>? runStatus;

  /// Actual time when the query was run.
  final pulumi.Input<String>? triggerTime;

  /// Creates a new [ScheduledQueryRecentlyFailedRun].
  /// [errorReportLocations] S3 location for error report.
  /// [executionStats] Statistics for a single scheduled query run.
  /// [failureReason] Error message for the scheduled query in case of failure. You might have to look at the error report to get more detailed error reasons.
  /// [invocationTime] InvocationTime for this run. This is the time at which the query is scheduled to run. Parameter `@scheduled_runtime` can be used in the query to get the value.
  /// [queryInsightsResponses] Various insights and metrics related to the run summary of the scheduled query.
  /// [runStatus] Status of a scheduled query run. Valid values: `AUTO_TRIGGER_SUCCESS`, `AUTO_TRIGGER_FAILURE`, `MANUAL_TRIGGER_SUCCESS`, `MANUAL_TRIGGER_FAILURE`.
  /// [triggerTime] Actual time when the query was run.
  ScheduledQueryRecentlyFailedRun({
    this.errorReportLocations,
    this.executionStats,
    this.failureReason,
    this.invocationTime,
    this.queryInsightsResponses,
    this.runStatus,
    this.triggerTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorReportLocations':
          ?pulumi.Input.mapOptionalInputValue<
            List<ScheduledQueryRecentlyFailedRunErrorReportLocation>,
            List<Map<String, dynamic>>
          >(
            errorReportLocations,
            (value) =>
                pulumi.Input.encodeList<
                  ScheduledQueryRecentlyFailedRunErrorReportLocation,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'executionStats':
          ?pulumi.Input.mapOptionalInputValue<
            List<ScheduledQueryRecentlyFailedRunExecutionStat>,
            List<Map<String, dynamic>>
          >(
            executionStats,
            (value) =>
                pulumi.Input.encodeList<
                  ScheduledQueryRecentlyFailedRunExecutionStat,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'failureReason': ?failureReason,
      'invocationTime': ?invocationTime,
      'queryInsightsResponses':
          ?pulumi.Input.mapOptionalInputValue<
            List<ScheduledQueryRecentlyFailedRunQueryInsightsResponse>,
            List<Map<String, dynamic>>
          >(
            queryInsightsResponses,
            (value) =>
                pulumi.Input.encodeList<
                  ScheduledQueryRecentlyFailedRunQueryInsightsResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'runStatus': ?runStatus,
      'triggerTime': ?triggerTime,
    };
  }

  factory ScheduledQueryRecentlyFailedRun.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRecentlyFailedRun(
      errorReportLocations: (() {
        final guardedValue = map['errorReportLocations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ScheduledQueryRecentlyFailedRunErrorReportLocation
          >(
            guardedValue,
            (value) =>
                ScheduledQueryRecentlyFailedRunErrorReportLocation.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      executionStats: (() {
        final guardedValue = map['executionStats'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ScheduledQueryRecentlyFailedRunExecutionStat>(
            guardedValue,
            (value) => ScheduledQueryRecentlyFailedRunExecutionStat.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      failureReason: (() {
        final guardedValue = map['failureReason'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      invocationTime: (() {
        final guardedValue = map['invocationTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      queryInsightsResponses: (() {
        final guardedValue = map['queryInsightsResponses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ScheduledQueryRecentlyFailedRunQueryInsightsResponse
          >(
            guardedValue,
            (value) =>
                ScheduledQueryRecentlyFailedRunQueryInsightsResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      runStatus: (() {
        final guardedValue = map['runStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      triggerTime: (() {
        final guardedValue = map['triggerTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
