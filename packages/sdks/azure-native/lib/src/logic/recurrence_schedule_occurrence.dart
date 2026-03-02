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
  RecurrenceScheduleOccurrence({
    this.day,
    this.occurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': ?pulumi.Input.mapOptionalInputValue<DayOfWeek, String>(day, (value) => value.value),
      'occurrence': ?occurrence,
    };
  }

  factory RecurrenceScheduleOccurrence.fromMap(Map<String, dynamic> map) {
    return RecurrenceScheduleOccurrence(
      day: map['day'] == null ? null : (DayOfWeek.fromValue(map['day'] as String)).input(),
      occurrence: map['occurrence'] == null ? null : (map['occurrence'] as int).input(),
    );
  }
}

