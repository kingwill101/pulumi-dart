// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../scheduled_query_last_run_summary_query_insights_response_query_spatial_coverage_maxis/scheduled_query_last_run_summary_query_insights_response_query_spatial_coverage_maxis.dart';

class ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverage {
  /// Insights into the most sub-optimal performing table on the temporal axis:
  final List<
          ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverageMaxis>?
      maxes;

  ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverage({
    this.maxes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxesValue = maxes;
    if (maxesValue != null) {
      map['maxes'] = Input.encodeList<
          ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverageMaxis,
          Map<String, dynamic>>(maxesValue, (value) => value.toMap());
    }
    return map;
  }

  factory ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverage.fromMap(
      Map<String, dynamic> map) {
    return ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverage(
      maxes: map['maxes'] == null
          ? null
          : Input.decodeList<
                  ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverageMaxis>(
              map['maxes'],
              (value) =>
                  ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverageMaxis
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
