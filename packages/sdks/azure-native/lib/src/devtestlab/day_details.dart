// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a daily schedule.
class DayDetails {
  /// The time of day the schedule will occur.
  final pulumi.Input<String>? time;

  /// Creates a new [DayDetails].
  /// [time] The time of day the schedule will occur.
  DayDetails({
    this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'time': ?time,
    };
  }

  factory DayDetails.fromMap(Map<String, dynamic> map) {
    return DayDetails(
      time: (() { final guardedValue = map['time']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

