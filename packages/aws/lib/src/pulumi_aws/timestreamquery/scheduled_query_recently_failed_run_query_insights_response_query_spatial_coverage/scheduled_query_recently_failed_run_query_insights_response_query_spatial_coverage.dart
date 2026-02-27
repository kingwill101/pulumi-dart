// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../scheduled_query_recently_failed_run_query_insights_response_query_spatial_coverage_maxis/scheduled_query_recently_failed_run_query_insights_response_query_spatial_coverage_maxis.dart';

class ScheduledQueryRecentlyFailedRunQueryInsightsResponseQuerySpatialCoverage {
  /// Insights into the most sub-optimal performing table on the temporal axis:
  final List<
          ScheduledQueryRecentlyFailedRunQueryInsightsResponseQuerySpatialCoverageMaxis>?
      maxes;

  ScheduledQueryRecentlyFailedRunQueryInsightsResponseQuerySpatialCoverage({
    this.maxes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxesValue = maxes;
    if (maxesValue != null) {
      map['maxes'] = pulumi.Input.encodeList<
          ScheduledQueryRecentlyFailedRunQueryInsightsResponseQuerySpatialCoverageMaxis,
          Map<String, dynamic>>(maxesValue, (value) => value.toMap());
    }
    return map;
  }

  factory ScheduledQueryRecentlyFailedRunQueryInsightsResponseQuerySpatialCoverage.fromMap(
      Map<String, dynamic> map) {
    return ScheduledQueryRecentlyFailedRunQueryInsightsResponseQuerySpatialCoverage(
      maxes: map['maxes'] == null
          ? null
          : pulumi.Input.decodeList<
                  ScheduledQueryRecentlyFailedRunQueryInsightsResponseQuerySpatialCoverageMaxis>(
              map['maxes'],
              (value) =>
                  ScheduledQueryRecentlyFailedRunQueryInsightsResponseQuerySpatialCoverageMaxis
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
