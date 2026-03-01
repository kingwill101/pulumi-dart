// ignore_for_file: unused_element, unnecessary_cast


class GetResourcePolicyInstanceSchedulePolicyVmStopSchedule {
  /// Specifies the frequency for the operation, using the unix-cron format.
  final String schedule;

  /// Creates a new [GetResourcePolicyInstanceSchedulePolicyVmStopSchedule].
  /// [schedule] Specifies the frequency for the operation, using the unix-cron format.
  GetResourcePolicyInstanceSchedulePolicyVmStopSchedule({
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schedule': schedule,
    };
  }

  factory GetResourcePolicyInstanceSchedulePolicyVmStopSchedule.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicyInstanceSchedulePolicyVmStopSchedule(
      schedule: map['schedule'] as String,
    );
  }
}

