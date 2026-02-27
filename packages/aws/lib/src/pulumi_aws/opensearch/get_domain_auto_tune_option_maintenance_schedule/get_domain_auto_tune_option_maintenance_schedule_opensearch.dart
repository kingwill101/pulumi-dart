// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_domain_auto_tune_option_maintenance_schedule_duration/get_domain_auto_tune_option_maintenance_schedule_duration_opensearch.dart';

class GetDomainAutoTuneOptionMaintenanceScheduleOpensearch {
  /// Cron expression for an Auto-Tune maintenance schedule.
  final String cronExpressionForRecurrence;

  /// Configuration block for the duration of the Auto-Tune maintenance window.
  final List<GetDomainAutoTuneOptionMaintenanceScheduleDurationOpensearch>
      durations;

  /// Date and time at which the Auto-Tune maintenance schedule starts in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final String startAt;

  GetDomainAutoTuneOptionMaintenanceScheduleOpensearch({
    required this.cronExpressionForRecurrence,
    required this.durations,
    required this.startAt,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cronExpressionForRecurrence'] = cronExpressionForRecurrence;
    map['durations'] = pulumi.Input.encodeList<
        GetDomainAutoTuneOptionMaintenanceScheduleDurationOpensearch,
        Map<String, dynamic>>(durations, (value) => value.toMap());
    map['startAt'] = startAt;
    return map;
  }

  factory GetDomainAutoTuneOptionMaintenanceScheduleOpensearch.fromMap(
      Map<String, dynamic> map) {
    return GetDomainAutoTuneOptionMaintenanceScheduleOpensearch(
      cronExpressionForRecurrence: map['cronExpressionForRecurrence'] as String,
      durations: pulumi.Input.decodeList<
              GetDomainAutoTuneOptionMaintenanceScheduleDurationOpensearch>(
          map['durations'],
          (value) =>
              GetDomainAutoTuneOptionMaintenanceScheduleDurationOpensearch
                  .fromMap((value as Map).cast<String, dynamic>())),
      startAt: map['startAt'] as String,
    );
  }
}
