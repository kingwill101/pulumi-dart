// ignore_for_file: unused_element, unnecessary_cast


class ScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRangeMaxis {
  /// ARN of the table which is queried with the largest time range.
  final String? tableArn;
  /// Maximum duration in nanoseconds between the start and end of the query.
  final int? value;

  /// Creates a new [ScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRangeMaxis].
  /// [tableArn] ARN of the table which is queried with the largest time range.
  /// [value] Maximum duration in nanoseconds between the start and end of the query.
  ScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRangeMaxis({
    this.tableArn,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tableArn': ?tableArn,
      'value': ?value,
    };
  }

  factory ScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRangeMaxis.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRangeMaxis(
      tableArn: map['tableArn'] == null ? null : map['tableArn'] as String,
      value: map['value'] == null ? null : map['value'] as int,
    );
  }
}

