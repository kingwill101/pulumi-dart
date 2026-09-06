// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents temporal aggregation settings.
class TemporalAggregation {
  /// Type of temporal aggregation.
  final pulumi.Input<dynamic> type;
  /// Time window size for aggregation, in minutes.
  final pulumi.Input<int?>? windowSizeMinutes;

  /// Creates a new [TemporalAggregation].
  /// [type] Type of temporal aggregation.
  /// [windowSizeMinutes] Time window size for aggregation, in minutes.
  const TemporalAggregation({
    required this.type,
    this.windowSizeMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'windowSizeMinutes': ?windowSizeMinutes,
    };
  }

  factory TemporalAggregation.fromMap(Map<String, dynamic> map) {
    return TemporalAggregation(
      type: pulumi.Input.fromValue(map['type']),
      windowSizeMinutes: (() { final guardedValue = map['windowSizeMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
