// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_resource_policy_instance_schedule_policy_vm_start_schedule/get_resource_policy_instance_schedule_policy_vm_start_schedule.dart';
import '../get_resource_policy_instance_schedule_policy_vm_stop_schedule/get_resource_policy_instance_schedule_policy_vm_stop_schedule.dart';

class GetResourcePolicyInstanceSchedulePolicy {
  /// The expiration time of the schedule. The timestamp is an RFC3339 string.
  final String expirationTime;

  /// The start time of the schedule. The timestamp is an RFC3339 string.
  final String startTime;

  /// Specifies the time zone to be used in interpreting the schedule. The value of this field must be a time zone name
  /// from the tz database: http://en.wikipedia.org/wiki/Tz_database.
  final String timeZone;

  /// Specifies the schedule for starting instances.
  final List<GetResourcePolicyInstanceSchedulePolicyVmStartSchedule>
      vmStartSchedules;

  /// Specifies the schedule for stopping instances.
  final List<GetResourcePolicyInstanceSchedulePolicyVmStopSchedule>
      vmStopSchedules;

  GetResourcePolicyInstanceSchedulePolicy({
    required this.expirationTime,
    required this.startTime,
    required this.timeZone,
    required this.vmStartSchedules,
    required this.vmStopSchedules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expirationTime'] = expirationTime;
    map['startTime'] = startTime;
    map['timeZone'] = timeZone;
    map['vmStartSchedules'] = pulumi.Input.encodeList<
        GetResourcePolicyInstanceSchedulePolicyVmStartSchedule,
        Map<String, dynamic>>(vmStartSchedules, (value) => value.toMap());
    map['vmStopSchedules'] = pulumi.Input.encodeList<
        GetResourcePolicyInstanceSchedulePolicyVmStopSchedule,
        Map<String, dynamic>>(vmStopSchedules, (value) => value.toMap());
    return map;
  }

  factory GetResourcePolicyInstanceSchedulePolicy.fromMap(
      Map<String, dynamic> map) {
    return GetResourcePolicyInstanceSchedulePolicy(
      expirationTime: map['expirationTime'] as String,
      startTime: map['startTime'] as String,
      timeZone: map['timeZone'] as String,
      vmStartSchedules: pulumi.Input.decodeList<
              GetResourcePolicyInstanceSchedulePolicyVmStartSchedule>(
          map['vmStartSchedules'],
          (value) =>
              GetResourcePolicyInstanceSchedulePolicyVmStartSchedule.fromMap(
                  (value as Map).cast<String, dynamic>())),
      vmStopSchedules: pulumi.Input.decodeList<
              GetResourcePolicyInstanceSchedulePolicyVmStopSchedule>(
          map['vmStopSchedules'],
          (value) =>
              GetResourcePolicyInstanceSchedulePolicyVmStopSchedule.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
