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
      'cron': ?pulumi.Input.mapOptionalInputValue<Cron, Map<String, dynamic>>(cron, (value) => value.toMap()),
      'recurrence': ?pulumi.Input.mapOptionalInputValue<Recurrence, Map<String, dynamic>>(recurrence, (value) => value.toMap()),
      'schedule': ?pulumi.Input.mapOptionalInputValue<ScheduleBase, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'status': ?status,
      'triggerType': ?triggerType,
    };
  }

  factory ComputeStartStopSchedule.fromMap(Map<String, dynamic> map) {
    return ComputeStartStopSchedule(
      action: map['action'] == null ? null : (map['action']! as String).input(),
      cron: map['cron'] == null ? null : (Cron.fromMap((map['cron']! as Map).cast<String, dynamic>())).input(),
      recurrence: map['recurrence'] == null ? null : (Recurrence.fromMap((map['recurrence']! as Map).cast<String, dynamic>())).input(),
      schedule: map['schedule'] == null ? null : (ScheduleBase.fromMap((map['schedule']! as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      triggerType: map['triggerType'] == null ? null : (map['triggerType']! as String).input(),
    );
  }
}

