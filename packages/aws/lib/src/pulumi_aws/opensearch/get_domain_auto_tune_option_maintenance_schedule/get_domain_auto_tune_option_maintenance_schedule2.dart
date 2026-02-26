// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_domain_auto_tune_option_maintenance_schedule_duration/get_domain_auto_tune_option_maintenance_schedule_duration2.dart';

class GetDomainAutoTuneOptionMaintenanceSchedule2 {
  /// Cron expression for an Auto-Tune maintenance schedule.
  final String cronExpressionForRecurrence;

  /// Configuration block for the duration of the Auto-Tune maintenance window.
  final List<GetDomainAutoTuneOptionMaintenanceScheduleDuration2> durations;

  /// Date and time at which the Auto-Tune maintenance schedule starts in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final String startAt;

  GetDomainAutoTuneOptionMaintenanceSchedule2({
    required this.cronExpressionForRecurrence,
    required this.durations,
    required this.startAt,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cronExpressionForRecurrence'] = cronExpressionForRecurrence;
    map['durations'] = Input.encodeList<
        GetDomainAutoTuneOptionMaintenanceScheduleDuration2,
        Map<String, dynamic>>(durations, (value) => value.toMap());
    map['startAt'] = startAt;
    return map;
  }

  factory GetDomainAutoTuneOptionMaintenanceSchedule2.fromMap(
      Map<String, dynamic> map) {
    return GetDomainAutoTuneOptionMaintenanceSchedule2(
      cronExpressionForRecurrence: map['cronExpressionForRecurrence'] as String,
      durations:
          Input.decodeList<GetDomainAutoTuneOptionMaintenanceScheduleDuration2>(
              map['durations'],
              (value) =>
                  GetDomainAutoTuneOptionMaintenanceScheduleDuration2.fromMap(
                      (value as Map).cast<String, dynamic>())),
      startAt: map['startAt'] as String,
    );
  }
}
