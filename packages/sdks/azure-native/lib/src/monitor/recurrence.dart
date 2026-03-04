// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recurrence_frequency.dart';
import 'recurrent_schedule.dart';

/// The repeating times at which this profile begins. This element is not used if the FixedDate element is used.
class Recurrence {
  /// the recurrence frequency. How often the schedule profile should take effect. This value must be Week, meaning each week will have the same set of profiles. For example, to set a daily schedule, set **schedule** to every day of the week. The frequency property specifies that the schedule is repeated weekly.
  final pulumi.Input<RecurrenceFrequency> frequency;

  /// the scheduling constraints for when the profile begins.
  final pulumi.Input<RecurrentSchedule> schedule;

  /// Creates a new [Recurrence].
  /// [frequency] the recurrence frequency. How often the schedule profile should take effect. This value must be Week, meaning each week will have the same set of profiles. For example, to set a daily schedule, set **schedule** to every day of the week. The frequency property specifies that the schedule is repeated weekly.
  /// [schedule] the scheduling constraints for when the profile begins.
  Recurrence({required this.frequency, required this.schedule});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': pulumi.Input.mapInputValue<RecurrenceFrequency, String>(
        frequency,
        (value) => value.wireValue,
      ),
      'schedule':
          pulumi.Input.mapInputValue<RecurrentSchedule, Map<String, dynamic>>(
            schedule,
            (value) => value.toMap(),
          ),
    };
  }

  factory Recurrence.fromMap(Map<String, dynamic> map) {
    return Recurrence(
      frequency: pulumi.Input.fromValue(
        RecurrenceFrequency.fromValue(map['frequency']! as String),
      ),
      schedule: pulumi.Input.fromValue(
        RecurrentSchedule.fromMap(
          (map['schedule']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
