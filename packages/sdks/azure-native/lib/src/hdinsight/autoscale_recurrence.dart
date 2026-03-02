// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscale_schedule.dart';

/// Schedule-based autoscale request parameters
class AutoscaleRecurrence {
  /// Array of schedule-based autoscale rules
  final pulumi.Input<List<AutoscaleSchedule>>? schedule;
  /// The time zone for the autoscale schedule times
  final pulumi.Input<String>? timeZone;

  /// Creates a new [AutoscaleRecurrence].
  /// [schedule] Array of schedule-based autoscale rules
  /// [timeZone] The time zone for the autoscale schedule times
  AutoscaleRecurrence({
    this.schedule,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schedule': ?pulumi.Input.mapOptionalInputValue<List<AutoscaleSchedule>, List<Map<String, dynamic>>>(schedule, (value) => pulumi.Input.encodeList<AutoscaleSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeZone': ?timeZone,
    };
  }

  factory AutoscaleRecurrence.fromMap(Map<String, dynamic> map) {
    return AutoscaleRecurrence(
      schedule: map['schedule'] == null ? null : (pulumi.Input.decodeList<AutoscaleSchedule>(map['schedule'], (value) => AutoscaleSchedule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone'] as String).input(),
    );
  }
}

