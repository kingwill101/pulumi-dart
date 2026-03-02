// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'week_day.dart';

/// Maintenance schedule entry for a managed environment.
class ScheduledEntry {
  /// Length of maintenance window range from 8 to 24 hours.
  final pulumi.Input<int> durationHours;
  /// Start hour after which managed environment maintenance can start from 0 to 23 hour.
  final pulumi.Input<int> startHourUtc;
  /// Day of the week when a managed environment can be patched.
  final pulumi.Input<WeekDay> weekDay;

  /// Creates a new [ScheduledEntry].
  /// [durationHours] Length of maintenance window range from 8 to 24 hours.
  /// [startHourUtc] Start hour after which managed environment maintenance can start from 0 to 23 hour.
  /// [weekDay] Day of the week when a managed environment can be patched.
  ScheduledEntry({
    required this.durationHours,
    required this.startHourUtc,
    required this.weekDay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'durationHours': durationHours,
      'startHourUtc': startHourUtc,
      'weekDay': pulumi.Input.mapInputValue<WeekDay, String>(weekDay, (value) => value.value),
    };
  }

  factory ScheduledEntry.fromMap(Map<String, dynamic> map) {
    return ScheduledEntry(
      durationHours: (map['durationHours'] as int).input(),
      startHourUtc: (map['startHourUtc'] as int).input(),
      weekDay: (WeekDay.fromValue(map['weekDay'] as String)).input(),
    );
  }
}

