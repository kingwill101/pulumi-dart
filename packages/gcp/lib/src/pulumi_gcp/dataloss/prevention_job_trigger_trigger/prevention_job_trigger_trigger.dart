// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_job_trigger_trigger_schedule/prevention_job_trigger_trigger_schedule.dart';

class PreventionJobTriggerTrigger {
  /// For use with hybrid jobs. Jobs must be manually created and finished.
  final Map<String, dynamic>? manual;

  /// Schedule for triggered jobs
  /// Structure is documented below.
  final PreventionJobTriggerTriggerSchedule? schedule;

  PreventionJobTriggerTrigger({
    this.manual,
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final manualValue = manual;
    if (manualValue != null) {
      map['manual'] = manualValue;
    }
    final scheduleValue = schedule;
    if (scheduleValue != null) {
      map['schedule'] = scheduleValue.toMap();
    }
    return map;
  }

  factory PreventionJobTriggerTrigger.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerTrigger(
      manual: map['manual'] == null
          ? null
          : (map['manual'] as Map).cast<String, dynamic>(),
      schedule: map['schedule'] == null
          ? null
          : PreventionJobTriggerTriggerSchedule.fromMap(
              (map['schedule'] as Map).cast<String, dynamic>()),
    );
  }
}
