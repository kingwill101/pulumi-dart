// ignore_for_file: unused_element, unnecessary_cast

import '../domain_auto_tune_options_maintenance_schedule_duration/domain_auto_tune_options_maintenance_schedule_duration_opensearch.dart';

class DomainAutoTuneOptionsMaintenanceScheduleOpensearch {
  /// A cron expression specifying the recurrence pattern for an Auto-Tune maintenance schedule.
  final String cronExpressionForRecurrence;

  /// Configuration block for the duration of the Auto-Tune maintenance window. Detailed below.
  final DomainAutoTuneOptionsMaintenanceScheduleDurationOpensearch duration;

  /// Date and time at which to start the Auto-Tune maintenance schedule in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final String startAt;

  DomainAutoTuneOptionsMaintenanceScheduleOpensearch({
    required this.cronExpressionForRecurrence,
    required this.duration,
    required this.startAt,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cronExpressionForRecurrence'] = cronExpressionForRecurrence;
    map['duration'] = duration.toMap();
    map['startAt'] = startAt;
    return map;
  }

  factory DomainAutoTuneOptionsMaintenanceScheduleOpensearch.fromMap(
      Map<String, dynamic> map) {
    return DomainAutoTuneOptionsMaintenanceScheduleOpensearch(
      cronExpressionForRecurrence: map['cronExpressionForRecurrence'] as String,
      duration:
          DomainAutoTuneOptionsMaintenanceScheduleDurationOpensearch.fromMap(
              (map['duration'] as Map).cast<String, dynamic>()),
      startAt: map['startAt'] as String,
    );
  }
}
