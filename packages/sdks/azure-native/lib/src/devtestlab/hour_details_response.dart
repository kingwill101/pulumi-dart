// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of an hourly schedule.
class HourDetailsResponse {
  /// Minutes of the hour the schedule will run.
  final pulumi.Input<int?>? minute;

  /// Creates a new [HourDetailsResponse].
  /// [minute] Minutes of the hour the schedule will run.
  const HourDetailsResponse({
    this.minute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minute': ?minute,
    };
  }

  factory HourDetailsResponse.fromMap(Map<String, dynamic> map) {
    return HourDetailsResponse(
      minute: (() { final guardedValue = map['minute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
