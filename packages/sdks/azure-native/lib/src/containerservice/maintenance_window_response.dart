// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'date_span_response.dart';
import 'schedule_response.dart';

/// Maintenance window used to configure scheduled auto-upgrade for a Managed Cluster.
class MaintenanceWindowResponse {
  /// Length of maintenance window range from 4 to 24 hours.
  final pulumi.Input<int> durationHours;
  /// Date ranges on which upgrade is not allowed. 'utcOffset' applies to this field. For example, with 'utcOffset: +02:00' and 'dateSpan' being '2022-12-23' to '2023-01-03', maintenance will be blocked from '2022-12-22 22:00' to '2023-01-03 22:00' in UTC time.
  final pulumi.Input<List<DateSpanResponse>>? notAllowedDates;
  /// Recurrence schedule for the maintenance window.
  final pulumi.Input<ScheduleResponse> schedule;
  /// The date the maintenance window activates. If the current date is before this date, the maintenance window is inactive and will not be used for upgrades. If not specified, the maintenance window will be active right away.
  final pulumi.Input<String>? startDate;
  /// The start time of the maintenance window. Accepted values are from '00:00' to '23:59'. 'utcOffset' applies to this field. For example: '02:00' with 'utcOffset: +02:00' means UTC time '00:00'.
  final pulumi.Input<String> startTime;
  /// The UTC offset in format +/-HH:mm. For example, '+05:30' for IST and '-07:00' for PST. If not specified, the default is '+00:00'.
  final pulumi.Input<String>? utcOffset;

  /// Creates a new [MaintenanceWindowResponse].
  /// [durationHours] Length of maintenance window range from 4 to 24 hours.
  /// [notAllowedDates] Date ranges on which upgrade is not allowed. 'utcOffset' applies to this field. For example, with 'utcOffset: +02:00' and 'dateSpan' being '2022-12-23' to '2023-01-03', maintenance will be blocked from '2022-12-22 22:00' to '2023-01-03 22:00' in UTC time.
  /// [schedule] Recurrence schedule for the maintenance window.
  /// [startDate] The date the maintenance window activates. If the current date is before this date, the maintenance window is inactive and will not be used for upgrades. If not specified, the maintenance window will be active right away.
  /// [startTime] The start time of the maintenance window. Accepted values are from '00:00' to '23:59'. 'utcOffset' applies to this field. For example: '02:00' with 'utcOffset: +02:00' means UTC time '00:00'.
  /// [utcOffset] The UTC offset in format +/-HH:mm. For example, '+05:30' for IST and '-07:00' for PST. If not specified, the default is '+00:00'.
  const MaintenanceWindowResponse({
    required this.durationHours,
    this.notAllowedDates,
    required this.schedule,
    this.startDate,
    required this.startTime,
    this.utcOffset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'durationHours': durationHours,
      'notAllowedDates': ?pulumi.Input.mapOptionalInputValue<List<DateSpanResponse>, List<Map<String, dynamic>>>(notAllowedDates, (value) => pulumi.Input.encodeList<DateSpanResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schedule': pulumi.Input.mapInputValue<ScheduleResponse, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'startDate': ?startDate,
      'startTime': startTime,
      'utcOffset': ?utcOffset,
    };
  }

  factory MaintenanceWindowResponse.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowResponse(
      durationHours: pulumi.Input.fromValue(map['durationHours'] as int),
      notAllowedDates: (() { final guardedValue = map['notAllowedDates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DateSpanResponse>(guardedValue, (value) => DateSpanResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      schedule: pulumi.Input.fromValue(ScheduleResponse.fromMap((map['schedule']! as Map).cast<String, dynamic>())),
      startDate: (() { final guardedValue = map['startDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      utcOffset: (() { final guardedValue = map['utcOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
