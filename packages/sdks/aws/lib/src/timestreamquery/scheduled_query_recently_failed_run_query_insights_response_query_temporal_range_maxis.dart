// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduledQueryRecentlyFailedRunQueryInsightsResponseQueryTemporalRangeMaxis {
  /// ARN of the table which is queried with the largest time range.
  final pulumi.Input<String>? tableArn;
  /// Maximum duration in nanoseconds between the start and end of the query.
  final pulumi.Input<int>? value;

  /// Creates a new [ScheduledQueryRecentlyFailedRunQueryInsightsResponseQueryTemporalRangeMaxis].
  /// [tableArn] ARN of the table which is queried with the largest time range.
  /// [value] Maximum duration in nanoseconds between the start and end of the query.
  ScheduledQueryRecentlyFailedRunQueryInsightsResponseQueryTemporalRangeMaxis({
    this.tableArn,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tableArn': ?tableArn,
      'value': ?value,
    };
  }

  factory ScheduledQueryRecentlyFailedRunQueryInsightsResponseQueryTemporalRangeMaxis.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRecentlyFailedRunQueryInsightsResponseQueryTemporalRangeMaxis(
      tableArn: map['tableArn'] == null ? null : ((map['tableArn'] as String).input()).input(),
      value: map['value'] == null ? null : ((map['value'] as int).input()).input(),
    );
  }
}

