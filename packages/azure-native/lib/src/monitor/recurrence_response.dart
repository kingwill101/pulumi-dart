// ignore_for_file: unused_element, unnecessary_cast

import 'recurrent_schedule_response.dart';

/// The repeating times at which this profile begins. This element is not used if the FixedDate element is used.
class RecurrenceResponse {
  /// the recurrence frequency. How often the schedule profile should take effect. This value must be Week, meaning each week will have the same set of profiles. For example, to set a daily schedule, set **schedule** to every day of the week. The frequency property specifies that the schedule is repeated weekly.
  final String frequency;
  /// the scheduling constraints for when the profile begins.
  final RecurrentScheduleResponse schedule;

  /// Creates a new [RecurrenceResponse].
  /// [frequency] the recurrence frequency. How often the schedule profile should take effect. This value must be Week, meaning each week will have the same set of profiles. For example, to set a daily schedule, set **schedule** to every day of the week. The frequency property specifies that the schedule is repeated weekly.
  /// [schedule] the scheduling constraints for when the profile begins.
  RecurrenceResponse({
    required this.frequency,
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': frequency,
      'schedule': schedule.toMap(),
    };
  }

  factory RecurrenceResponse.fromMap(Map<String, dynamic> map) {
    return RecurrenceResponse(
      frequency: map['frequency'] as String,
      schedule: RecurrentScheduleResponse.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
    );
  }
}

