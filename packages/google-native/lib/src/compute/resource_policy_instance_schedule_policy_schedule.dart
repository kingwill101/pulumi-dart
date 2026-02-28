// ignore_for_file: unused_element, unnecessary_cast

/// Schedule for an instance operation.
class ResourcePolicyInstanceSchedulePolicySchedule {
  /// Specifies the frequency for the operation, using the unix-cron format.
  final String? schedule;

  /// Creates a new [ResourcePolicyInstanceSchedulePolicySchedule].
  /// [schedule] Specifies the frequency for the operation, using the unix-cron format.
  ResourcePolicyInstanceSchedulePolicySchedule({
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

  factory ResourcePolicyInstanceSchedulePolicySchedule.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicyInstanceSchedulePolicySchedule(
      schedule: map['schedule'] == null ? null : map['schedule'] as String,
    );
  }
}
