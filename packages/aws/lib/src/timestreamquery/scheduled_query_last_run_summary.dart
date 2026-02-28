// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_last_run_summary_error_report_location.dart';
import 'scheduled_query_last_run_summary_execution_stat.dart';
import 'scheduled_query_last_run_summary_query_insights_response.dart';

class ScheduledQueryLastRunSummary {
  /// S3 location for error report.
  final List<ScheduledQueryLastRunSummaryErrorReportLocation>?
      errorReportLocations;

  /// Statistics for a single scheduled query run.
  final List<ScheduledQueryLastRunSummaryExecutionStat>? executionStats;

  /// Error message for the scheduled query in case of failure. You might have to look at the error report to get more detailed error reasons.
  final String? failureReason;

  /// InvocationTime for this run. This is the time at which the query is scheduled to run. Parameter `@scheduled_runtime` can be used in the query to get the value.
  final String? invocationTime;

  /// Various insights and metrics related to the run summary of the scheduled query.
  final List<ScheduledQueryLastRunSummaryQueryInsightsResponse>?
      queryInsightsResponses;

  /// Status of a scheduled query run. Valid values: `AUTO_TRIGGER_SUCCESS`, `AUTO_TRIGGER_FAILURE`, `MANUAL_TRIGGER_SUCCESS`, `MANUAL_TRIGGER_FAILURE`.
  final String? runStatus;

  /// Actual time when the query was run.
  final String? triggerTime;

  /// Creates a new [ScheduledQueryLastRunSummary].
  /// [errorReportLocations] S3 location for error report.
  /// [executionStats] Statistics for a single scheduled query run.
  /// [failureReason] Error message for the scheduled query in case of failure. You might have to look at the error report to get more detailed error reasons.
  /// [invocationTime] InvocationTime for this run. This is the time at which the query is scheduled to run. Parameter `@scheduled_runtime` can be used in the query to get the value.
  /// [queryInsightsResponses] Various insights and metrics related to the run summary of the scheduled query.
  /// [runStatus] Status of a scheduled query run. Valid values: `AUTO_TRIGGER_SUCCESS`, `AUTO_TRIGGER_FAILURE`, `MANUAL_TRIGGER_SUCCESS`, `MANUAL_TRIGGER_FAILURE`.
  /// [triggerTime] Actual time when the query was run.
  ScheduledQueryLastRunSummary({
    this.errorReportLocations,
    this.executionStats,
    this.failureReason,
    this.invocationTime,
    this.queryInsightsResponses,
    this.runStatus,
    this.triggerTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final errorReportLocationsValue = errorReportLocations;
    if (errorReportLocationsValue != null) {
      map['errorReportLocations'] = pulumi.Input.encodeList<
              ScheduledQueryLastRunSummaryErrorReportLocation,
              Map<String, dynamic>>(
          errorReportLocationsValue, (value) => value.toMap());
    }
    final executionStatsValue = executionStats;
    if (executionStatsValue != null) {
      map['executionStats'] = pulumi.Input.encodeList<
          ScheduledQueryLastRunSummaryExecutionStat,
          Map<String, dynamic>>(executionStatsValue, (value) => value.toMap());
    }
    final failureReasonValue = failureReason;
    if (failureReasonValue != null) {
      map['failureReason'] = failureReasonValue;
    }
    final invocationTimeValue = invocationTime;
    if (invocationTimeValue != null) {
      map['invocationTime'] = invocationTimeValue;
    }
    final queryInsightsResponsesValue = queryInsightsResponses;
    if (queryInsightsResponsesValue != null) {
      map['queryInsightsResponses'] = pulumi.Input.encodeList<
              ScheduledQueryLastRunSummaryQueryInsightsResponse,
              Map<String, dynamic>>(
          queryInsightsResponsesValue, (value) => value.toMap());
    }
    final runStatusValue = runStatus;
    if (runStatusValue != null) {
      map['runStatus'] = runStatusValue;
    }
    final triggerTimeValue = triggerTime;
    if (triggerTimeValue != null) {
      map['triggerTime'] = triggerTimeValue;
    }
    return map;
  }

  factory ScheduledQueryLastRunSummary.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryLastRunSummary(
      errorReportLocations: map['errorReportLocations'] == null
          ? null
          : pulumi.Input.decodeList<
                  ScheduledQueryLastRunSummaryErrorReportLocation>(
              map['errorReportLocations'],
              (value) =>
                  ScheduledQueryLastRunSummaryErrorReportLocation.fromMap(
                      (value as Map).cast<String, dynamic>())),
      executionStats: map['executionStats'] == null
          ? null
          : pulumi.Input.decodeList<ScheduledQueryLastRunSummaryExecutionStat>(
              map['executionStats'],
              (value) => ScheduledQueryLastRunSummaryExecutionStat.fromMap(
                  (value as Map).cast<String, dynamic>())),
      failureReason:
          map['failureReason'] == null ? null : map['failureReason'] as String,
      invocationTime: map['invocationTime'] == null
          ? null
          : map['invocationTime'] as String,
      queryInsightsResponses: map['queryInsightsResponses'] == null
          ? null
          : pulumi.Input.decodeList<
                  ScheduledQueryLastRunSummaryQueryInsightsResponse>(
              map['queryInsightsResponses'],
              (value) =>
                  ScheduledQueryLastRunSummaryQueryInsightsResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
      runStatus: map['runStatus'] == null ? null : map['runStatus'] as String,
      triggerTime:
          map['triggerTime'] == null ? null : map['triggerTime'] as String,
    );
  }
}
