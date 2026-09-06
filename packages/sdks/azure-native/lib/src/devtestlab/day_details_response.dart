// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a daily schedule.
class DayDetailsResponse {
  /// The time of day the schedule will occur.
  final pulumi.Input<String?>? time;

  /// Creates a new [DayDetailsResponse].
  /// [time] The time of day the schedule will occur.
  const DayDetailsResponse({
    this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'time': ?time,
    };
  }

  factory DayDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DayDetailsResponse(
      time: (() { final guardedValue = map['time']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
