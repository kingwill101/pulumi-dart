// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../scheduled_query_recently_failed_run_query_insights_response_query_temporal_range_maxis/scheduled_query_recently_failed_run_query_insights_response_query_temporal_range_maxis.dart';

class ScheduledQueryRecentlyFailedRunQueryInsightsResponseQueryTemporalRange {
  /// Insights into the most sub-optimal performing table on the temporal axis:
  final List<
          ScheduledQueryRecentlyFailedRunQueryInsightsResponseQueryTemporalRangeMaxis>?
      maxes;

  ScheduledQueryRecentlyFailedRunQueryInsightsResponseQueryTemporalRange({
    this.maxes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxesValue = maxes;
    if (maxesValue != null) {
      map['maxes'] = Input.encodeList<
          ScheduledQueryRecentlyFailedRunQueryInsightsResponseQueryTemporalRangeMaxis,
          Map<String, dynamic>>(maxesValue, (value) => value.toMap());
    }
    return map;
  }

  factory ScheduledQueryRecentlyFailedRunQueryInsightsResponseQueryTemporalRange.fromMap(
      Map<String, dynamic> map) {
    return ScheduledQueryRecentlyFailedRunQueryInsightsResponseQueryTemporalRange(
      maxes: map['maxes'] == null
          ? null
          : Input.decodeList<
                  ScheduledQueryRecentlyFailedRunQueryInsightsResponseQueryTemporalRangeMaxis>(
              map['maxes'],
              (value) =>
                  ScheduledQueryRecentlyFailedRunQueryInsightsResponseQueryTemporalRangeMaxis
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
