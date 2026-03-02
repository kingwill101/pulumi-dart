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
  WeekDetails({
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
      time: map['time'] == null ? null : (map['time']! as String).input(),
      weekdays: map['weekdays'] == null ? null : ((map['weekdays']! as List).cast<String>()).input(),
    );
  }
}

