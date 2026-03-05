// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cron_response.dart';
import 'recurrence_response.dart';
import 'schedule_base_response.dart';

/// Compute start stop schedule properties
class ComputeStartStopScheduleResponse {
  /// [Required] The compute power action.
  final pulumi.Input<String>? action;
  /// Required if triggerType is Cron.
  final pulumi.Input<CronResponse>? cron;
  /// A system assigned id for the schedule.
  final pulumi.Input<String> id;
  /// The current deployment state of schedule.
  final pulumi.Input<String> provisioningStatus;
  /// Required if triggerType is Recurrence.
  final pulumi.Input<RecurrenceResponse>? recurrence;
  /// [Deprecated] Not used any more.
  final pulumi.Input<ScheduleBaseResponse>? schedule;
  /// Is the schedule enabled or disabled?
  final pulumi.Input<String>? status;
  /// [Required] The schedule trigger type.
  final pulumi.Input<String>? triggerType;

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
      'cron': ?pulumi.Input.mapOptionalInputValue<CronResponse, Map<String, dynamic>>(cron, (value) => value.toMap()),
      'id': id,
      'provisioningStatus': provisioningStatus,
      'recurrence': ?pulumi.Input.mapOptionalInputValue<RecurrenceResponse, Map<String, dynamic>>(recurrence, (value) => value.toMap()),
      'schedule': ?pulumi.Input.mapOptionalInputValue<ScheduleBaseResponse, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'status': ?status,
      'triggerType': ?triggerType,
    };
  }

  factory ComputeStartStopScheduleResponse.fromMap(Map<String, dynamic> map) {
    return ComputeStartStopScheduleResponse(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cron: (() { final guardedValue = map['cron']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CronResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      provisioningStatus: pulumi.Input.fromValue(map['provisioningStatus'] as String),
      recurrence: (() { final guardedValue = map['recurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RecurrenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduleBaseResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerType: (() { final guardedValue = map['triggerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

