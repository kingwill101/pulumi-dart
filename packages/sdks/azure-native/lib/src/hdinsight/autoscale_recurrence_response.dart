// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscale_schedule_response.dart';

/// Schedule-based autoscale request parameters
class AutoscaleRecurrenceResponse {
  /// Array of schedule-based autoscale rules
  final List<AutoscaleScheduleResponse>? schedule;
  /// The time zone for the autoscale schedule times
  final String? timeZone;

  /// Creates a new [AutoscaleRecurrenceResponse].
  /// [schedule] Array of schedule-based autoscale rules
  /// [timeZone] The time zone for the autoscale schedule times
  AutoscaleRecurrenceResponse({
    this.schedule,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schedule': ?schedule == null ? null : pulumi.Input.encodeList<AutoscaleScheduleResponse, Map<String, dynamic>>(schedule!, (value) => value.toMap()),
      'timeZone': ?timeZone,
    };
  }

  factory AutoscaleRecurrenceResponse.fromMap(Map<String, dynamic> map) {
    return AutoscaleRecurrenceResponse(
      schedule: map['schedule'] == null ? null : pulumi.Input.decodeList<AutoscaleScheduleResponse>(map['schedule'], (value) => AutoscaleScheduleResponse.fromMap((value as Map).cast<String, dynamic>())),
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}

