// ignore_for_file: unused_element, unnecessary_cast

class GetResourcePolicyInstanceSchedulePolicyVmStartSchedule {
  /// Specifies the frequency for the operation, using the unix-cron format.
  final String schedule;

  /// Creates a new [GetResourcePolicyInstanceSchedulePolicyVmStartSchedule].
  /// [schedule] Specifies the frequency for the operation, using the unix-cron format.
  GetResourcePolicyInstanceSchedulePolicyVmStartSchedule({
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['schedule'] = schedule;
    return map;
  }

  factory GetResourcePolicyInstanceSchedulePolicyVmStartSchedule.fromMap(
      Map<String, dynamic> map) {
    return GetResourcePolicyInstanceSchedulePolicyVmStartSchedule(
      schedule: map['schedule'] as String,
    );
  }
}
