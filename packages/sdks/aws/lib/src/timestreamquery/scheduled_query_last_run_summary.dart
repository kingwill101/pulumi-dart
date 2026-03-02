// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_last_run_summary_error_report_location.dart';
import 'scheduled_query_last_run_summary_execution_stat.dart';
import 'scheduled_query_last_run_summary_query_insights_response.dart';

class ScheduledQueryLastRunSummary {
  /// S3 location for error report.
  final pulumi.Input<List<ScheduledQueryLastRunSummaryErrorReportLocation>>? errorReportLocations;
  /// Statistics for a single scheduled query run.
  final pulumi.Input<List<ScheduledQueryLastRunSummaryExecutionStat>>? executionStats;
  /// Error message for the scheduled query in case of failure. You might have to look at the error report to get more detailed error reasons.
  final pulumi.Input<String>? failureReason;
  /// InvocationTime for this run. This is the time at which the query is scheduled to run. Parameter `@scheduled_runtime` can be used in the query to get the value.
  final pulumi.Input<String>? invocationTime;
  /// Various insights and metrics related to the run summary of the scheduled query.
  final pulumi.Input<List<ScheduledQueryLastRunSummaryQueryInsightsResponse>>? queryInsightsResponses;
  /// Status of a scheduled query run. Valid values: `AUTO_TRIGGER_SUCCESS`, `AUTO_TRIGGER_FAILURE`, `MANUAL_TRIGGER_SUCCESS`, `MANUAL_TRIGGER_FAILURE`.
  final pulumi.Input<String>? runStatus;
  /// Actual time when the query was run.
  final pulumi.Input<String>? triggerTime;

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
    return <String, dynamic>{
      'errorReportLocations': ?pulumi.Input.mapOptionalInputValue<List<ScheduledQueryLastRunSummaryErrorReportLocation>, List<Map<String, dynamic>>>(errorReportLocations, (value) => pulumi.Input.encodeList<ScheduledQueryLastRunSummaryErrorReportLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'executionStats': ?pulumi.Input.mapOptionalInputValue<List<ScheduledQueryLastRunSummaryExecutionStat>, List<Map<String, dynamic>>>(executionStats, (value) => pulumi.Input.encodeList<ScheduledQueryLastRunSummaryExecutionStat, Map<String, dynamic>>(value, (value) => value.toMap())),
      'failureReason': ?failureReason,
      'invocationTime': ?invocationTime,
      'queryInsightsResponses': ?pulumi.Input.mapOptionalInputValue<List<ScheduledQueryLastRunSummaryQueryInsightsResponse>, List<Map<String, dynamic>>>(queryInsightsResponses, (value) => pulumi.Input.encodeList<ScheduledQueryLastRunSummaryQueryInsightsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'runStatus': ?runStatus,
      'triggerTime': ?triggerTime,
    };
  }

  factory ScheduledQueryLastRunSummary.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryLastRunSummary(
      errorReportLocations: map['errorReportLocations'] == null ? null : ((pulumi.Input.decodeList<ScheduledQueryLastRunSummaryErrorReportLocation>(map['errorReportLocations']!, (value) => ScheduledQueryLastRunSummaryErrorReportLocation.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      executionStats: map['executionStats'] == null ? null : ((pulumi.Input.decodeList<ScheduledQueryLastRunSummaryExecutionStat>(map['executionStats']!, (value) => ScheduledQueryLastRunSummaryExecutionStat.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      failureReason: map['failureReason'] == null ? null : ((map['failureReason'] as String).input()).input(),
      invocationTime: map['invocationTime'] == null ? null : ((map['invocationTime'] as String).input()).input(),
      queryInsightsResponses: map['queryInsightsResponses'] == null ? null : ((pulumi.Input.decodeList<ScheduledQueryLastRunSummaryQueryInsightsResponse>(map['queryInsightsResponses']!, (value) => ScheduledQueryLastRunSummaryQueryInsightsResponse.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      runStatus: map['runStatus'] == null ? null : ((map['runStatus'] as String).input()).input(),
      triggerTime: map['triggerTime'] == null ? null : ((map['triggerTime'] as String).input()).input(),
    );
  }
}

