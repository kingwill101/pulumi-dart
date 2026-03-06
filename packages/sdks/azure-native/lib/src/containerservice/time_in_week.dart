// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Time in a week.
class TimeInWeek {
  /// The day of the week.
  final pulumi.Input<String>? day;
  /// A list of hours in the day used to identify a time range. Each integer hour represents a time range beginning at 0m after the hour ending at the next hour (non-inclusive). 0 corresponds to 00:00 UTC, 23 corresponds to 23:00 UTC. Specifying [0, 1] means the 00:00 - 02:00 UTC time range.
  final pulumi.Input<List<int>>? hourSlots;

  /// Creates a new [TimeInWeek].
  /// [day] The day of the week.
  /// [hourSlots] A list of hours in the day used to identify a time range. Each integer hour represents a time range beginning at 0m after the hour ending at the next hour (non-inclusive). 0 corresponds to 00:00 UTC, 23 corresponds to 23:00 UTC. Specifying [0, 1] means the 00:00 - 02:00 UTC time range.
  const TimeInWeek({
    this.day,
    this.hourSlots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': ?day,
      'hourSlots': ?hourSlots,
    };
  }

  factory TimeInWeek.fromMap(Map<String, dynamic> map) {
    return TimeInWeek(
      day: (() { final guardedValue = map['day']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hourSlots: (() { final guardedValue = map['hourSlots']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
    );
  }
}

