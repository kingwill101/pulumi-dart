// ignore_for_file: unused_element, unnecessary_cast

import 'week_day.dart';

/// Maintenance schedule entry for a managed environment.
class ScheduledEntry {
  /// Length of maintenance window range from 8 to 24 hours.
  final int durationHours;
  /// Start hour after which managed environment maintenance can start from 0 to 23 hour.
  final int startHourUtc;
  /// Day of the week when a managed environment can be patched.
  final WeekDay weekDay;

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
      'weekDay': weekDay.value,
    };
  }

  factory ScheduledEntry.fromMap(Map<String, dynamic> map) {
    return ScheduledEntry(
      durationHours: map['durationHours'] as int,
      startHourUtc: map['startHourUtc'] as int,
      weekDay: WeekDay.fromValue(map['weekDay'] as String),
    );
  }
}

