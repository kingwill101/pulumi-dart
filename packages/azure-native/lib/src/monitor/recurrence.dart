// ignore_for_file: unused_element, unnecessary_cast

import 'recurrence_frequency.dart';
import 'recurrent_schedule.dart';

/// The repeating times at which this profile begins. This element is not used if the FixedDate element is used.
class Recurrence {
  /// the recurrence frequency. How often the schedule profile should take effect. This value must be Week, meaning each week will have the same set of profiles. For example, to set a daily schedule, set **schedule** to every day of the week. The frequency property specifies that the schedule is repeated weekly.
  final RecurrenceFrequency frequency;
  /// the scheduling constraints for when the profile begins.
  final RecurrentSchedule schedule;

  /// Creates a new [Recurrence].
  /// [frequency] the recurrence frequency. How often the schedule profile should take effect. This value must be Week, meaning each week will have the same set of profiles. For example, to set a daily schedule, set **schedule** to every day of the week. The frequency property specifies that the schedule is repeated weekly.
  /// [schedule] the scheduling constraints for when the profile begins.
  Recurrence({
    required this.frequency,
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': frequency.value,
      'schedule': schedule.toMap(),
    };
  }

  factory Recurrence.fromMap(Map<String, dynamic> map) {
    return Recurrence(
      frequency: RecurrenceFrequency.fromValue(map['frequency'] as String),
      schedule: RecurrentSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
    );
  }
}

