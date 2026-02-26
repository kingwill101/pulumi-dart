// ignore_for_file: unused_element, unnecessary_cast

import '../resource_policy_instance_schedule_policy_vm_start_schedule/resource_policy_instance_schedule_policy_vm_start_schedule.dart';
import '../resource_policy_instance_schedule_policy_vm_stop_schedule/resource_policy_instance_schedule_policy_vm_stop_schedule.dart';

class ResourcePolicyInstanceSchedulePolicy {
  /// The expiration time of the schedule. The timestamp is an RFC3339 string.
  final String? expirationTime;

  /// The start time of the schedule. The timestamp is an RFC3339 string.
  final String? startTime;

  /// Specifies the time zone to be used in interpreting the schedule. The value of this field must be a time zone name
  /// from the tz database: http://en.wikipedia.org/wiki/Tz_database.
  final String timeZone;

  /// Specifies the schedule for starting instances.
  /// Structure is documented below.
  final ResourcePolicyInstanceSchedulePolicyVmStartSchedule? vmStartSchedule;

  /// Specifies the schedule for stopping instances.
  /// Structure is documented below.
  final ResourcePolicyInstanceSchedulePolicyVmStopSchedule? vmStopSchedule;

  ResourcePolicyInstanceSchedulePolicy({
    this.expirationTime,
    this.startTime,
    required this.timeZone,
    this.vmStartSchedule,
    this.vmStopSchedule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final expirationTimeValue = expirationTime;
    if (expirationTimeValue != null) {
      map['expirationTime'] = expirationTimeValue;
    }
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    map['timeZone'] = timeZone;
    final vmStartScheduleValue = vmStartSchedule;
    if (vmStartScheduleValue != null) {
      map['vmStartSchedule'] = vmStartScheduleValue.toMap();
    }
    final vmStopScheduleValue = vmStopSchedule;
    if (vmStopScheduleValue != null) {
      map['vmStopSchedule'] = vmStopScheduleValue.toMap();
    }
    return map;
  }

  factory ResourcePolicyInstanceSchedulePolicy.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicyInstanceSchedulePolicy(
      expirationTime: map['expirationTime'] == null
          ? null
          : map['expirationTime'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      timeZone: map['timeZone'] as String,
      vmStartSchedule: map['vmStartSchedule'] == null
          ? null
          : ResourcePolicyInstanceSchedulePolicyVmStartSchedule.fromMap(
              (map['vmStartSchedule'] as Map).cast<String, dynamic>()),
      vmStopSchedule: map['vmStopSchedule'] == null
          ? null
          : ResourcePolicyInstanceSchedulePolicyVmStopSchedule.fromMap(
              (map['vmStopSchedule'] as Map).cast<String, dynamic>()),
    );
  }
}
