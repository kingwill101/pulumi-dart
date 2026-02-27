// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_domain_auto_tune_option_maintenance_schedule_duration/get_domain_auto_tune_option_maintenance_schedule_duration.dart';

class GetDomainAutoTuneOptionMaintenanceSchedule {
  /// Cron expression for an Auto-Tune maintenance schedule.
  final String cronExpressionForRecurrence;

  /// Configuration block for the duration of the Auto-Tune maintenance window.
  final List<GetDomainAutoTuneOptionMaintenanceScheduleDuration> durations;

  /// Date and time at which the Auto-Tune maintenance schedule starts in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final String startAt;

  GetDomainAutoTuneOptionMaintenanceSchedule({
    required this.cronExpressionForRecurrence,
    required this.durations,
    required this.startAt,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cronExpressionForRecurrence'] = cronExpressionForRecurrence;
    map['durations'] = pulumi.Input.encodeList<
        GetDomainAutoTuneOptionMaintenanceScheduleDuration,
        Map<String, dynamic>>(durations, (value) => value.toMap());
    map['startAt'] = startAt;
    return map;
  }

  factory GetDomainAutoTuneOptionMaintenanceSchedule.fromMap(
      Map<String, dynamic> map) {
    return GetDomainAutoTuneOptionMaintenanceSchedule(
      cronExpressionForRecurrence: map['cronExpressionForRecurrence'] as String,
      durations: pulumi.Input.decodeList<
              GetDomainAutoTuneOptionMaintenanceScheduleDuration>(
          map['durations'],
          (value) => GetDomainAutoTuneOptionMaintenanceScheduleDuration.fromMap(
              (value as Map).cast<String, dynamic>())),
      startAt: map['startAt'] as String,
    );
  }
}
