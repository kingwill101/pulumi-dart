// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_recently_failed_run_query_insights_response_query_spatial_coverage.dart';
import 'scheduled_query_recently_failed_run_query_insights_response_query_temporal_range.dart';

class ScheduledQueryRecentlyFailedRunQueryInsightsResponse {
  /// Size of query result set in bytes. You can use this data to validate if the result set has changed as part of the query tuning exercise.
  final int? outputBytes;
  /// Total number of rows returned as part of the query result set. You can use this data to validate if the number of rows in the result set have changed as part of the query tuning exercise.
  final int? outputRows;
  /// Insights into the spatial coverage of the query, including the table with sub-optimal (max) spatial pruning. This information can help you identify areas for improvement in your partitioning strategy to enhance spatial pruning.
  final List<ScheduledQueryRecentlyFailedRunQueryInsightsResponseQuerySpatialCoverage>? querySpatialCoverages;
  /// Number of tables in the query.
  final int? queryTableCount;
  /// Insights into the temporal range of the query, including the table with the largest (max) time range. Following are some of the potential options for optimizing time-based pruning: add missing time-predicates, remove functions around the time predicates, add time predicates to all the sub-queries.
  final List<ScheduledQueryRecentlyFailedRunQueryInsightsResponseQueryTemporalRange>? queryTemporalRanges;

  /// Creates a new [ScheduledQueryRecentlyFailedRunQueryInsightsResponse].
  /// [outputBytes] Size of query result set in bytes. You can use this data to validate if the result set has changed as part of the query tuning exercise.
  /// [outputRows] Total number of rows returned as part of the query result set. You can use this data to validate if the number of rows in the result set have changed as part of the query tuning exercise.
  /// [querySpatialCoverages] Insights into the spatial coverage of the query, including the table with sub-optimal (max) spatial pruning. This information can help you identify areas for improvement in your partitioning strategy to enhance spatial pruning.
  /// [queryTableCount] Number of tables in the query.
  /// [queryTemporalRanges] Insights into the temporal range of the query, including the table with the largest (max) time range. Following are some of the potential options for optimizing time-based pruning: add missing time-predicates, remove functions around the time predicates, add time predicates to all the sub-queries.
  ScheduledQueryRecentlyFailedRunQueryInsightsResponse({
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
      'querySpatialCoverages': ?querySpatialCoverages == null ? null : pulumi.Input.encodeList<ScheduledQueryRecentlyFailedRunQueryInsightsResponseQuerySpatialCoverage, Map<String, dynamic>>(querySpatialCoverages!, (value) => value.toMap()),
      'queryTableCount': ?queryTableCount,
      'queryTemporalRanges': ?queryTemporalRanges == null ? null : pulumi.Input.encodeList<ScheduledQueryRecentlyFailedRunQueryInsightsResponseQueryTemporalRange, Map<String, dynamic>>(queryTemporalRanges!, (value) => value.toMap()),
    };
  }

  factory ScheduledQueryRecentlyFailedRunQueryInsightsResponse.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRecentlyFailedRunQueryInsightsResponse(
      outputBytes: map['outputBytes'] == null ? null : map['outputBytes'] as int,
      outputRows: map['outputRows'] == null ? null : map['outputRows'] as int,
      querySpatialCoverages: map['querySpatialCoverages'] == null ? null : pulumi.Input.decodeList<ScheduledQueryRecentlyFailedRunQueryInsightsResponseQuerySpatialCoverage>(map['querySpatialCoverages'], (value) => ScheduledQueryRecentlyFailedRunQueryInsightsResponseQuerySpatialCoverage.fromMap((value as Map).cast<String, dynamic>())),
      queryTableCount: map['queryTableCount'] == null ? null : map['queryTableCount'] as int,
      queryTemporalRanges: map['queryTemporalRanges'] == null ? null : pulumi.Input.decodeList<ScheduledQueryRecentlyFailedRunQueryInsightsResponseQueryTemporalRange>(map['queryTemporalRanges'], (value) => ScheduledQueryRecentlyFailedRunQueryInsightsResponseQueryTemporalRange.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

