// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cron.dart';
import 'recurrence.dart';
import 'schedule_base.dart';

/// Compute start stop schedule properties
class ComputeStartStopSchedule {
  /// [Required] The compute power action.
  final pulumi.Input<String>? action;
  /// Required if triggerType is Cron.
  final pulumi.Input<Cron>? cron;
  /// Required if triggerType is Recurrence.
  final pulumi.Input<Recurrence>? recurrence;
  /// [Deprecated] Not used any more.
  final pulumi.Input<ScheduleBase>? schedule;
  /// Is the schedule enabled or disabled?
  final pulumi.Input<String>? status;
  /// [Required] The schedule trigger type.
  final pulumi.Input<String>? triggerType;

  /// Creates a new [ComputeStartStopSchedule].
  /// [action] [Required] The compute power action.
  /// [cron] Required if triggerType is Cron.
  /// [recurrence] Required if triggerType is Recurrence.
  /// [schedule] [Deprecated] Not used any more.
  /// [status] Is the schedule enabled or disabled?
  /// [triggerType] [Required] The schedule trigger type.
  const ComputeStartStopSchedule({
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
      'cron': ?pulumi.Input.mapOptionalInputValue<Cron, Map<String, dynamic>>(cron, (value) => value.toMap()),
      'recurrence': ?pulumi.Input.mapOptionalInputValue<Recurrence, Map<String, dynamic>>(recurrence, (value) => value.toMap()),
      'schedule': ?pulumi.Input.mapOptionalInputValue<ScheduleBase, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'status': ?status,
      'triggerType': ?triggerType,
    };
  }

  factory ComputeStartStopSchedule.fromMap(Map<String, dynamic> map) {
    return ComputeStartStopSchedule(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cron: (() { final guardedValue = map['cron']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Cron.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recurrence: (() { final guardedValue = map['recurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Recurrence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduleBase.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerType: (() { final guardedValue = map['triggerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

