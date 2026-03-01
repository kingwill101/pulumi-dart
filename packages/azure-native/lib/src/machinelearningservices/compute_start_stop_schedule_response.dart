// ignore_for_file: unused_element, unnecessary_cast

import 'cron_response.dart';
import 'recurrence_response.dart';
import 'schedule_base_response.dart';

/// Compute start stop schedule properties
class ComputeStartStopScheduleResponse {
  /// [Required] The compute power action.
  final String? action;
  /// Required if triggerType is Cron.
  final CronResponse? cron;
  /// A system assigned id for the schedule.
  final String id;
  /// The current deployment state of schedule.
  final String provisioningStatus;
  /// Required if triggerType is Recurrence.
  final RecurrenceResponse? recurrence;
  /// [Deprecated] Not used any more.
  final ScheduleBaseResponse? schedule;
  /// Is the schedule enabled or disabled?
  final String? status;
  /// [Required] The schedule trigger type.
  final String? triggerType;

  /// Creates a new [ComputeStartStopScheduleResponse].
  /// [action] [Required] The compute power action.
  /// [cron] Required if triggerType is Cron.
  /// [id] A system assigned id for the schedule.
  /// [provisioningStatus] The current deployment state of schedule.
  /// [recurrence] Required if triggerType is Recurrence.
  /// [schedule] [Deprecated] Not used any more.
  /// [status] Is the schedule enabled or disabled?
  /// [triggerType] [Required] The schedule trigger type.
  ComputeStartStopScheduleResponse({
    this.action,
    this.cron,
    required this.id,
    required this.provisioningStatus,
    this.recurrence,
    this.schedule,
    this.status,
    this.triggerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'cron': ?cron == null ? null : cron!.toMap(),
      'id': id,
      'provisioningStatus': provisioningStatus,
      'recurrence': ?recurrence == null ? null : recurrence!.toMap(),
      'schedule': ?schedule == null ? null : schedule!.toMap(),
      'status': ?status,
      'triggerType': ?triggerType,
    };
  }

  factory ComputeStartStopScheduleResponse.fromMap(Map<String, dynamic> map) {
    return ComputeStartStopScheduleResponse(
      action: map['action'] == null ? null : map['action'] as String,
      cron: map['cron'] == null ? null : CronResponse.fromMap((map['cron'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      provisioningStatus: map['provisioningStatus'] as String,
      recurrence: map['recurrence'] == null ? null : RecurrenceResponse.fromMap((map['recurrence'] as Map).cast<String, dynamic>()),
      schedule: map['schedule'] == null ? null : ScheduleBaseResponse.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status'] as String,
      triggerType: map['triggerType'] == null ? null : map['triggerType'] as String,
    );
  }
}

