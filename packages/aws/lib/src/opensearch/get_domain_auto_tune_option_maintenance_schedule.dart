// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_auto_tune_option_maintenance_schedule_duration.dart';

class GetDomainAutoTuneOptionMaintenanceSchedule {
  /// Cron expression for an Auto-Tune maintenance schedule.
  final String cronExpressionForRecurrence;

  /// Configuration block for the duration of the Auto-Tune maintenance window.
  final List<GetDomainAutoTuneOptionMaintenanceScheduleDuration> durations;

  /// Date and time at which the Auto-Tune maintenance schedule starts in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final String startAt;

  /// Creates a new [GetDomainAutoTuneOptionMaintenanceSchedule].
  /// [cronExpressionForRecurrence] Cron expression for an Auto-Tune maintenance schedule.
  /// [durations] Configuration block for the duration of the Auto-Tune maintenance window.
  /// [startAt] Date and time at which the Auto-Tune maintenance schedule starts in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  GetDomainAutoTuneOptionMaintenanceSchedule({
    required this.cronExpressionForRecurrence,
    required this.durations,
    required this.startAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cronExpressionForRecurrence': cronExpressionForRecurrence,
      'durations':
          pulumi.Input.encodeList<
            GetDomainAutoTuneOptionMaintenanceScheduleDuration,
            Map<String, dynamic>
          >(durations, (value) => value.toMap()),
      'startAt': startAt,
    };
  }

  factory GetDomainAutoTuneOptionMaintenanceSchedule.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDomainAutoTuneOptionMaintenanceSchedule(
      cronExpressionForRecurrence: map['cronExpressionForRecurrence'] as String,
      durations:
          pulumi.Input.decodeList<
            GetDomainAutoTuneOptionMaintenanceScheduleDuration
          >(
            map['durations'],
            (value) =>
                GetDomainAutoTuneOptionMaintenanceScheduleDuration.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      startAt: map['startAt'] as String,
    );
  }
}
