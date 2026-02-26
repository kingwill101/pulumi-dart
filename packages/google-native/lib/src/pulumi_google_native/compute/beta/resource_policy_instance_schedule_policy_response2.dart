// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_instance_schedule_policy_schedule_response2.dart';

/// An InstanceSchedulePolicy specifies when and how frequent certain operations are performed on the instance.
class ResourcePolicyInstanceSchedulePolicyResponse2 {
  /// The expiration time of the schedule. The timestamp is an RFC3339 string.
  final String expirationTime;

  /// The start time of the schedule. The timestamp is an RFC3339 string.
  final String startTime;

  /// Specifies the time zone to be used in interpreting Schedule.schedule. The value of this field must be a time zone name from the tz database: https://wikipedia.org/wiki/Tz_database.
  final String timeZone;

  /// Specifies the schedule for starting instances.
  final ResourcePolicyInstanceSchedulePolicyScheduleResponse2 vmStartSchedule;

  /// Specifies the schedule for stopping instances.
  final ResourcePolicyInstanceSchedulePolicyScheduleResponse2 vmStopSchedule;

  ResourcePolicyInstanceSchedulePolicyResponse2({
    required this.expirationTime,
    required this.startTime,
    required this.timeZone,
    required this.vmStartSchedule,
    required this.vmStopSchedule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expirationTime'] = expirationTime;
    map['startTime'] = startTime;
    map['timeZone'] = timeZone;
    map['vmStartSchedule'] = vmStartSchedule.toMap();
    map['vmStopSchedule'] = vmStopSchedule.toMap();
    return map;
  }

  factory ResourcePolicyInstanceSchedulePolicyResponse2.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicyInstanceSchedulePolicyResponse2(
      expirationTime: map['expirationTime'] as String,
      startTime: map['startTime'] as String,
      timeZone: map['timeZone'] as String,
      vmStartSchedule:
          ResourcePolicyInstanceSchedulePolicyScheduleResponse2.fromMap(
              (map['vmStartSchedule'] as Map).cast<String, dynamic>()),
      vmStopSchedule:
          ResourcePolicyInstanceSchedulePolicyScheduleResponse2.fromMap(
              (map['vmStopSchedule'] as Map).cast<String, dynamic>()),
    );
  }
}
