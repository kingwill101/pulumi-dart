// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_instance_schedule_policy_schedule_response_compute_beta.dart';

/// An InstanceSchedulePolicy specifies when and how frequent certain operations are performed on the instance.
class ResourcePolicyInstanceSchedulePolicyResponseComputeBeta {
  /// The expiration time of the schedule. The timestamp is an RFC3339 string.
  final String expirationTime;

  /// The start time of the schedule. The timestamp is an RFC3339 string.
  final String startTime;

  /// Specifies the time zone to be used in interpreting Schedule.schedule. The value of this field must be a time zone name from the tz database: https://wikipedia.org/wiki/Tz_database.
  final String timeZone;

  /// Specifies the schedule for starting instances.
  final ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeBeta
  vmStartSchedule;

  /// Specifies the schedule for stopping instances.
  final ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeBeta
  vmStopSchedule;

  /// Creates a new [ResourcePolicyInstanceSchedulePolicyResponseComputeBeta].
  /// [expirationTime] The expiration time of the schedule. The timestamp is an RFC3339 string.
  /// [startTime] The start time of the schedule. The timestamp is an RFC3339 string.
  /// [timeZone] Specifies the time zone to be used in interpreting Schedule.schedule. The value of this field must be a time zone name from the tz database: https://wikipedia.org/wiki/Tz_database.
  /// [vmStartSchedule] Specifies the schedule for starting instances.
  /// [vmStopSchedule] Specifies the schedule for stopping instances.
  ResourcePolicyInstanceSchedulePolicyResponseComputeBeta({
    required this.expirationTime,
    required this.startTime,
    required this.timeZone,
    required this.vmStartSchedule,
    required this.vmStopSchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationTime': expirationTime,
      'startTime': startTime,
      'timeZone': timeZone,
      'vmStartSchedule': vmStartSchedule.toMap(),
      'vmStopSchedule': vmStopSchedule.toMap(),
    };
  }

  factory ResourcePolicyInstanceSchedulePolicyResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourcePolicyInstanceSchedulePolicyResponseComputeBeta(
      expirationTime: map['expirationTime'] as String,
      startTime: map['startTime'] as String,
      timeZone: map['timeZone'] as String,
      vmStartSchedule:
          ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeBeta.fromMap(
            (map['vmStartSchedule'] as Map).cast<String, dynamic>(),
          ),
      vmStopSchedule:
          ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeBeta.fromMap(
            (map['vmStopSchedule'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
