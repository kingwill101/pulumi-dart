// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents temporal aggregation settings.
class TemporalAggregationResponse {
  /// Type of temporal aggregation.
  final pulumi.Input<String> type;
  /// Time window size for aggregation, in minutes.
  final pulumi.Input<int?>? windowSizeMinutes;

  /// Creates a new [TemporalAggregationResponse].
  /// [type] Type of temporal aggregation.
  /// [windowSizeMinutes] Time window size for aggregation, in minutes.
  const TemporalAggregationResponse({
    required this.type,
    this.windowSizeMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'windowSizeMinutes': ?windowSizeMinutes,
    };
  }

  factory TemporalAggregationResponse.fromMap(Map<String, dynamic> map) {
    return TemporalAggregationResponse(
      type: pulumi.Input.fromValue(map['type'] as String),
      windowSizeMinutes: (() { final guardedValue = map['windowSizeMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
