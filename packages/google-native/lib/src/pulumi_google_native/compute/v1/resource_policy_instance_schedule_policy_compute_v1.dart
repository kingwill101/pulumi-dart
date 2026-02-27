// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_instance_schedule_policy_schedule_compute_v1.dart';

/// An InstanceSchedulePolicy specifies when and how frequent certain operations are performed on the instance.
class ResourcePolicyInstanceSchedulePolicyComputeV1 {
  /// The expiration time of the schedule. The timestamp is an RFC3339 string.
  final String? expirationTime;

  /// The start time of the schedule. The timestamp is an RFC3339 string.
  final String? startTime;

  /// Specifies the time zone to be used in interpreting Schedule.schedule. The value of this field must be a time zone name from the tz database: https://wikipedia.org/wiki/Tz_database.
  final String? timeZone;

  /// Specifies the schedule for starting instances.
  final ResourcePolicyInstanceSchedulePolicyScheduleComputeV1? vmStartSchedule;

  /// Specifies the schedule for stopping instances.
  final ResourcePolicyInstanceSchedulePolicyScheduleComputeV1? vmStopSchedule;

  ResourcePolicyInstanceSchedulePolicyComputeV1({
    this.expirationTime,
    this.startTime,
    this.timeZone,
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
    final timeZoneValue = timeZone;
    if (timeZoneValue != null) {
      map['timeZone'] = timeZoneValue;
    }
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

  factory ResourcePolicyInstanceSchedulePolicyComputeV1.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicyInstanceSchedulePolicyComputeV1(
      expirationTime: map['expirationTime'] == null
          ? null
          : map['expirationTime'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
      vmStartSchedule: map['vmStartSchedule'] == null
          ? null
          : ResourcePolicyInstanceSchedulePolicyScheduleComputeV1.fromMap(
              (map['vmStartSchedule'] as Map).cast<String, dynamic>()),
      vmStopSchedule: map['vmStopSchedule'] == null
          ? null
          : ResourcePolicyInstanceSchedulePolicyScheduleComputeV1.fromMap(
              (map['vmStopSchedule'] as Map).cast<String, dynamic>()),
    );
  }
}
