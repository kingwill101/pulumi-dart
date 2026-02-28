// ignore_for_file: unused_element, unnecessary_cast

/// Schedule for an instance operation.
class ResourcePolicyInstanceSchedulePolicyScheduleComputeV1 {
  /// Specifies the frequency for the operation, using the unix-cron format.
  final String? schedule;

  /// Creates a new [ResourcePolicyInstanceSchedulePolicyScheduleComputeV1].
  /// [schedule] Specifies the frequency for the operation, using the unix-cron format.
  ResourcePolicyInstanceSchedulePolicyScheduleComputeV1({
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final scheduleValue = schedule;
    if (scheduleValue != null) {
      map['schedule'] = scheduleValue;
    }
    return map;
  }

  factory ResourcePolicyInstanceSchedulePolicyScheduleComputeV1.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicyInstanceSchedulePolicyScheduleComputeV1(
      schedule: map['schedule'] == null ? null : map['schedule'] as String,
    );
  }
}
