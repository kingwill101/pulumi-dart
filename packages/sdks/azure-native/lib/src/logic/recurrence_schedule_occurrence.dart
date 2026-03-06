// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'day_of_week.dart';

/// The recurrence schedule occurrence.
class RecurrenceScheduleOccurrence {
  /// The day of the week.
  final pulumi.Input<DayOfWeek>? day;
  /// The occurrence.
  final pulumi.Input<int>? occurrence;

  /// Creates a new [RecurrenceScheduleOccurrence].
  /// [day] The day of the week.
  /// [occurrence] The occurrence.
  const RecurrenceScheduleOccurrence({
    this.day,
    this.occurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': ?pulumi.Input.mapOptionalInputValue<DayOfWeek, String>(day, (value) => value.wireValue),
      'occurrence': ?occurrence,
    };
  }

  factory RecurrenceScheduleOccurrence.fromMap(Map<String, dynamic> map) {
    return RecurrenceScheduleOccurrence(
      day: (() { final guardedValue = map['day']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DayOfWeek.fromValue(guardedValue as String)); })(),
      occurrence: (() { final guardedValue = map['occurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

