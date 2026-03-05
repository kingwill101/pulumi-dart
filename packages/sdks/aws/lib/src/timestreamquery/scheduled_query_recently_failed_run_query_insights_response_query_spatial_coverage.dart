// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_recently_failed_run_query_insights_response_query_spatial_coverage_maxis.dart';

class ScheduledQueryRecentlyFailedRunQueryInsightsResponseQuerySpatialCoverage {
  /// Insights into the most sub-optimal performing table on the temporal axis:
  final pulumi.Input<List<ScheduledQueryRecentlyFailedRunQueryInsightsResponseQuerySpatialCoverageMaxis>>? maxes;

  /// Creates a new [ScheduledQueryRecentlyFailedRunQueryInsightsResponseQuerySpatialCoverage].
  /// [maxes] Insights into the most sub-optimal performing table on the temporal axis:
  ScheduledQueryRecentlyFailedRunQueryInsightsResponseQuerySpatialCoverage({
    this.maxes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxes': ?pulumi.Input.mapOptionalInputValue<List<ScheduledQueryRecentlyFailedRunQueryInsightsResponseQuerySpatialCoverageMaxis>, List<Map<String, dynamic>>>(maxes, (value) => pulumi.Input.encodeList<ScheduledQueryRecentlyFailedRunQueryInsightsResponseQuerySpatialCoverageMaxis, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ScheduledQueryRecentlyFailedRunQueryInsightsResponseQuerySpatialCoverage.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRecentlyFailedRunQueryInsightsResponseQuerySpatialCoverage(
      maxes: (() { final guardedValue = map['maxes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScheduledQueryRecentlyFailedRunQueryInsightsResponseQuerySpatialCoverageMaxis>(guardedValue, (value) => ScheduledQueryRecentlyFailedRunQueryInsightsResponseQuerySpatialCoverageMaxis.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

