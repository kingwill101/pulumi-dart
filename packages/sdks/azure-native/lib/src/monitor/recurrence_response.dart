// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recurrent_schedule_response.dart';

/// The repeating times at which this profile begins. This element is not used if the FixedDate element is used.
class RecurrenceResponse {
  /// the recurrence frequency. How often the schedule profile should take effect. This value must be Week, meaning each week will have the same set of profiles. For example, to set a daily schedule, set **schedule** to every day of the week. The frequency property specifies that the schedule is repeated weekly.
  final pulumi.Input<String> frequency;
  /// the scheduling constraints for when the profile begins.
  final pulumi.Input<RecurrentScheduleResponse> schedule;

  /// Creates a new [RecurrenceResponse].
  /// [frequency] the recurrence frequency. How often the schedule profile should take effect. This value must be Week, meaning each week will have the same set of profiles. For example, to set a daily schedule, set **schedule** to every day of the week. The frequency property specifies that the schedule is repeated weekly.
  /// [schedule] the scheduling constraints for when the profile begins.
  const RecurrenceResponse({
    required this.frequency,
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': frequency,
      'schedule': pulumi.Input.mapInputValue<RecurrentScheduleResponse, Map<String, dynamic>>(schedule, (value) => value.toMap()),
    };
  }

  factory RecurrenceResponse.fromMap(Map<String, dynamic> map) {
    return RecurrenceResponse(
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
      schedule: pulumi.Input.fromValue(RecurrentScheduleResponse.fromMap((map['schedule']! as Map).cast<String, dynamic>())),
    );
  }
}
