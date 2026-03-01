// ignore_for_file: unused_element, unnecessary_cast

import 'domain_auto_tune_options_maintenance_schedule_duration.dart';

class DomainAutoTuneOptionsMaintenanceSchedule {
  /// A cron expression specifying the recurrence pattern for an Auto-Tune maintenance schedule.
  final String cronExpressionForRecurrence;

  /// Configuration block for the duration of the Auto-Tune maintenance window. Detailed below.
  final DomainAutoTuneOptionsMaintenanceScheduleDuration duration;

  /// Date and time at which to start the Auto-Tune maintenance schedule in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final String startAt;

  /// Creates a new [DomainAutoTuneOptionsMaintenanceSchedule].
  /// [cronExpressionForRecurrence] A cron expression specifying the recurrence pattern for an Auto-Tune maintenance schedule.
  /// [duration] Configuration block for the duration of the Auto-Tune maintenance window. Detailed below.
  /// [startAt] Date and time at which to start the Auto-Tune maintenance schedule in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  DomainAutoTuneOptionsMaintenanceSchedule({
    required this.cronExpressionForRecurrence,
    required this.duration,
    required this.startAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cronExpressionForRecurrence': cronExpressionForRecurrence,
      'duration': duration.toMap(),
      'startAt': startAt,
    };
  }

  factory DomainAutoTuneOptionsMaintenanceSchedule.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainAutoTuneOptionsMaintenanceSchedule(
      cronExpressionForRecurrence: map['cronExpressionForRecurrence'] as String,
      duration: DomainAutoTuneOptionsMaintenanceScheduleDuration.fromMap(
        (map['duration'] as Map).cast<String, dynamic>(),
      ),
      startAt: map['startAt'] as String,
    );
  }
}
