// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a weekly schedule.
class WeekDetails {
  /// The time of the day the schedule will occur.
  final pulumi.Input<String>? time;
  /// The days of the week for which the schedule is set (e.g. Sunday, Monday, Tuesday, etc.).
  final pulumi.Input<List<String>>? weekdays;

  /// Creates a new [WeekDetails].
  /// [time] The time of the day the schedule will occur.
  /// [weekdays] The days of the week for which the schedule is set (e.g. Sunday, Monday, Tuesday, etc.).
  const WeekDetails({
    this.time,
    this.weekdays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'time': ?time,
      'weekdays': ?weekdays,
    };
  }

  factory WeekDetails.fromMap(Map<String, dynamic> map) {
    return WeekDetails(
      time: (() { final guardedValue = map['time']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weekdays: (() { final guardedValue = map['weekdays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
