// ignore_for_file: unused_element, unnecessary_cast

import 'datascan_execution_spec_trigger_one_time.dart';
import 'datascan_execution_spec_trigger_schedule.dart';

class DatascanExecutionSpecTrigger {
  /// The scan runs once via dataScans.run API.
  final Map<String, dynamic>? onDemand;

  /// The scan runs once upon DataScan creation.
  /// Structure is documented below.
  final DatascanExecutionSpecTriggerOneTime? oneTime;

  /// The scan is scheduled to run periodically.
  /// Structure is documented below.
  final DatascanExecutionSpecTriggerSchedule? schedule;

  /// Creates a new [DatascanExecutionSpecTrigger].
  /// [onDemand] The scan runs once via dataScans.run API.
  /// [oneTime] The scan runs once upon DataScan creation.
  /// [schedule] The scan is scheduled to run periodically.
  DatascanExecutionSpecTrigger({
    this.onDemand,
    this.oneTime,
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final onDemandValue = onDemand;
    if (onDemandValue != null) {
      map['onDemand'] = onDemandValue;
    }
    final oneTimeValue = oneTime;
    if (oneTimeValue != null) {
      map['oneTime'] = oneTimeValue.toMap();
    }
    final scheduleValue = schedule;
    if (scheduleValue != null) {
      map['schedule'] = scheduleValue.toMap();
    }
    return map;
  }

  factory DatascanExecutionSpecTrigger.fromMap(Map<String, dynamic> map) {
    return DatascanExecutionSpecTrigger(
      onDemand: map['onDemand'] == null
          ? null
          : (map['onDemand'] as Map).cast<String, dynamic>(),
      oneTime: map['oneTime'] == null
          ? null
          : DatascanExecutionSpecTriggerOneTime.fromMap(
              (map['oneTime'] as Map).cast<String, dynamic>()),
      schedule: map['schedule'] == null
          ? null
          : DatascanExecutionSpecTriggerSchedule.fromMap(
              (map['schedule'] as Map).cast<String, dynamic>()),
    );
  }
}
