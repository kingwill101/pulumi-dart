// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../scheduled_query_last_run_summary_query_insights_response_query_temporal_range_maxis/scheduled_query_last_run_summary_query_insights_response_query_temporal_range_maxis.dart';

class ScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRange {
  /// Insights into the most sub-optimal performing table on the temporal axis:
  final List<
          ScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRangeMaxis>?
      maxes;

  ScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRange({
    this.maxes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxesValue = maxes;
    if (maxesValue != null) {
      map['maxes'] = Input.encodeList<
          ScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRangeMaxis,
          Map<String, dynamic>>(maxesValue, (value) => value.toMap());
    }
    return map;
  }

  factory ScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRange.fromMap(
      Map<String, dynamic> map) {
    return ScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRange(
      maxes: map['maxes'] == null
          ? null
          : Input.decodeList<
                  ScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRangeMaxis>(
              map['maxes'],
              (value) =>
                  ScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRangeMaxis
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
