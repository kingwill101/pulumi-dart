// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_last_run_summary_query_insights_response_query_spatial_coverage.dart';
import 'scheduled_query_last_run_summary_query_insights_response_query_temporal_range.dart';

class ScheduledQueryLastRunSummaryQueryInsightsResponse {
  /// Size of query result set in bytes. You can use this data to validate if the result set has changed as part of the query tuning exercise.
  final pulumi.Input<int>? outputBytes;
  /// Total number of rows returned as part of the query result set. You can use this data to validate if the number of rows in the result set have changed as part of the query tuning exercise.
  final pulumi.Input<int>? outputRows;
  /// Insights into the spatial coverage of the query, including the table with sub-optimal (max) spatial pruning. This information can help you identify areas for improvement in your partitioning strategy to enhance spatial pruning.
  final pulumi.Input<List<ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverage>>? querySpatialCoverages;
  /// Number of tables in the query.
  final pulumi.Input<int>? queryTableCount;
  /// Insights into the temporal range of the query, including the table with the largest (max) time range. Following are some of the potential options for optimizing time-based pruning: add missing time-predicates, remove functions around the time predicates, add time predicates to all the sub-queries.
  final pulumi.Input<List<ScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRange>>? queryTemporalRanges;

  /// Creates a new [ScheduledQueryLastRunSummaryQueryInsightsResponse].
  /// [outputBytes] Size of query result set in bytes. You can use this data to validate if the result set has changed as part of the query tuning exercise.
  /// [outputRows] Total number of rows returned as part of the query result set. You can use this data to validate if the number of rows in the result set have changed as part of the query tuning exercise.
  /// [querySpatialCoverages] Insights into the spatial coverage of the query, including the table with sub-optimal (max) spatial pruning. This information can help you identify areas for improvement in your partitioning strategy to enhance spatial pruning.
  /// [queryTableCount] Number of tables in the query.
  /// [queryTemporalRanges] Insights into the temporal range of the query, including the table with the largest (max) time range. Following are some of the potential options for optimizing time-based pruning: add missing time-predicates, remove functions around the time predicates, add time predicates to all the sub-queries.
  ScheduledQueryLastRunSummaryQueryInsightsResponse({
    this.outputBytes,
    this.outputRows,
    this.querySpatialCoverages,
    this.queryTableCount,
    this.queryTemporalRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputBytes': ?outputBytes,
      'outputRows': ?outputRows,
      'querySpatialCoverages': ?pulumi.Input.mapOptionalInputValue<List<ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverage>, List<Map<String, dynamic>>>(querySpatialCoverages, (value) => pulumi.Input.encodeList<ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'queryTableCount': ?queryTableCount,
      'queryTemporalRanges': ?pulumi.Input.mapOptionalInputValue<List<ScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRange>, List<Map<String, dynamic>>>(queryTemporalRanges, (value) => pulumi.Input.encodeList<ScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRange, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ScheduledQueryLastRunSummaryQueryInsightsResponse.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryLastRunSummaryQueryInsightsResponse(
      outputBytes: map['outputBytes'] == null ? null : ((map['outputBytes'] as int).input()).input(),
      outputRows: map['outputRows'] == null ? null : ((map['outputRows'] as int).input()).input(),
      querySpatialCoverages: map['querySpatialCoverages'] == null ? null : ((pulumi.Input.decodeList<ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverage>(map['querySpatialCoverages']!, (value) => ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverage.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      queryTableCount: map['queryTableCount'] == null ? null : ((map['queryTableCount'] as int).input()).input(),
      queryTemporalRanges: map['queryTemporalRanges'] == null ? null : ((pulumi.Input.decodeList<ScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRange>(map['queryTemporalRanges']!, (value) => ScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRange.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

