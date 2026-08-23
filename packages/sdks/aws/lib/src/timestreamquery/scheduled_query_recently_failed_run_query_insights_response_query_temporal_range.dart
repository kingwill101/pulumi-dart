// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_recently_failed_run_query_insights_response_query_temporal_range_maxis.dart';

class ScheduledQueryRecentlyFailedRunQueryInsightsResponseQueryTemporalRange {
  /// Insights into the most sub-optimal performing table on the temporal axis:
  final pulumi.Input<List<ScheduledQueryRecentlyFailedRunQueryInsightsResponseQueryTemporalRangeMaxis>>? maxes;

  /// Creates a new [ScheduledQueryRecentlyFailedRunQueryInsightsResponseQueryTemporalRange].
  /// [maxes] Insights into the most sub-optimal performing table on the temporal axis:
  const ScheduledQueryRecentlyFailedRunQueryInsightsResponseQueryTemporalRange({
    this.maxes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxes': ?pulumi.Input.mapOptionalInputValue<List<ScheduledQueryRecentlyFailedRunQueryInsightsResponseQueryTemporalRangeMaxis>, List<Map<String, dynamic>>>(maxes, (value) => pulumi.Input.encodeList<ScheduledQueryRecentlyFailedRunQueryInsightsResponseQueryTemporalRangeMaxis, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ScheduledQueryRecentlyFailedRunQueryInsightsResponseQueryTemporalRange.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRecentlyFailedRunQueryInsightsResponseQueryTemporalRange(
      maxes: (() { final guardedValue = map['maxes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScheduledQueryRecentlyFailedRunQueryInsightsResponseQueryTemporalRangeMaxis>(guardedValue, (value) => ScheduledQueryRecentlyFailedRunQueryInsightsResponseQueryTemporalRangeMaxis.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
