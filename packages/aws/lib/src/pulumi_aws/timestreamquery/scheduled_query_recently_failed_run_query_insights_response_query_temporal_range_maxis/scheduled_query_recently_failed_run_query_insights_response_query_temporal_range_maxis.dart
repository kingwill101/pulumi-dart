// ignore_for_file: unused_element, unnecessary_cast

class ScheduledQueryRecentlyFailedRunQueryInsightsResponseQueryTemporalRangeMaxis {
  /// ARN of the table which is queried with the largest time range.
  final String? tableArn;

  /// Maximum duration in nanoseconds between the start and end of the query.
  final int? value;

  ScheduledQueryRecentlyFailedRunQueryInsightsResponseQueryTemporalRangeMaxis({
    this.tableArn,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final tableArnValue = tableArn;
    if (tableArnValue != null) {
      map['tableArn'] = tableArnValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory ScheduledQueryRecentlyFailedRunQueryInsightsResponseQueryTemporalRangeMaxis.fromMap(
      Map<String, dynamic> map) {
    return ScheduledQueryRecentlyFailedRunQueryInsightsResponseQueryTemporalRangeMaxis(
      tableArn: map['tableArn'] == null ? null : map['tableArn'] as String,
      value: map['value'] == null ? null : map['value'] as int,
    );
  }
}
