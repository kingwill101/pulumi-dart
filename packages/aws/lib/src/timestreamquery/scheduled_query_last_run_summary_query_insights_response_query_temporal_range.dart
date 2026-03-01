// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_last_run_summary_query_insights_response_query_temporal_range_maxis.dart';

class ScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRange {
  /// Insights into the most sub-optimal performing table on the temporal axis:
  final List<
    ScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRangeMaxis
  >?
  maxes;

  /// Creates a new [ScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRange].
  /// [maxes] Insights into the most sub-optimal performing table on the temporal axis:
  ScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRange({
    this.maxes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxes': ?maxes == null
          ? null
          : pulumi.Input.encodeList<
              ScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRangeMaxis,
              Map<String, dynamic>
            >(maxes!, (value) => value.toMap()),
    };
  }

  factory ScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRange.fromMap(
    Map<String, dynamic> map,
  ) {
    return ScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRange(
      maxes: map['maxes'] == null
          ? null
          : pulumi.Input.decodeList<
              ScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRangeMaxis
            >(
              map['maxes'],
              (value) =>
                  ScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRangeMaxis.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
