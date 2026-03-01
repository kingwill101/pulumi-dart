// ignore_for_file: unused_element, unnecessary_cast

import 'cron.dart';
import 'recurrence.dart';
import 'schedule_base.dart';

/// Compute start stop schedule properties
class ComputeStartStopSchedule {
  /// [Required] The compute power action.
  final String? action;
  /// Required if triggerType is Cron.
  final Cron? cron;
  /// Required if triggerType is Recurrence.
  final Recurrence? recurrence;
  /// [Deprecated] Not used any more.
  final ScheduleBase? schedule;
  /// Is the schedule enabled or disabled?
  final String? status;
  /// [Required] The schedule trigger type.
  final String? triggerType;

  /// Creates a new [ComputeStartStopSchedule].
  /// [action] [Required] The compute power action.
  /// [cron] Required if triggerType is Cron.
  /// [recurrence] Required if triggerType is Recurrence.
  /// [schedule] [Deprecated] Not used any more.
  /// [status] Is the schedule enabled or disabled?
  /// [triggerType] [Required] The schedule trigger type.
  ComputeStartStopSchedule({
    this.action,
    this.cron,
    this.recurrence,
    this.schedule,
    this.status,
    this.triggerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'cron': ?cron == null ? null : cron!.toMap(),
      'recurrence': ?recurrence == null ? null : recurrence!.toMap(),
      'schedule': ?schedule == null ? null : schedule!.toMap(),
      'status': ?status,
      'triggerType': ?triggerType,
    };
  }

  factory ComputeStartStopSchedule.fromMap(Map<String, dynamic> map) {
    return ComputeStartStopSchedule(
      action: map['action'] == null ? null : map['action'] as String,
      cron: map['cron'] == null ? null : Cron.fromMap((map['cron'] as Map).cast<String, dynamic>()),
      recurrence: map['recurrence'] == null ? null : Recurrence.fromMap((map['recurrence'] as Map).cast<String, dynamic>()),
      schedule: map['schedule'] == null ? null : ScheduleBase.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status'] as String,
      triggerType: map['triggerType'] == null ? null : map['triggerType'] as String,
    );
  }
}

