// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_last_run_summary_query_insights_response_query_spatial_coverage_maxis.dart';

class ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverage {
  /// Insights into the most sub-optimal performing table on the temporal axis:
  final pulumi.Input<List<ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverageMaxis>>? maxes;

  /// Creates a new [ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverage].
  /// [maxes] Insights into the most sub-optimal performing table on the temporal axis:
  ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverage({
    this.maxes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxes': ?pulumi.Input.mapOptionalInputValue<List<ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverageMaxis>, List<Map<String, dynamic>>>(maxes, (value) => pulumi.Input.encodeList<ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverageMaxis, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverage.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverage(
      maxes: map['maxes'] == null ? null : ((pulumi.Input.decodeList<ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverageMaxis>(map['maxes']!, (value) => ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverageMaxis.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

