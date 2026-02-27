// ignore_for_file: unused_element, unnecessary_cast

/// Schedule for an instance operation.
class ResourcePolicyInstanceSchedulePolicyScheduleComputeBeta {
  /// Specifies the frequency for the operation, using the unix-cron format.
  final String? schedule;

  ResourcePolicyInstanceSchedulePolicyScheduleComputeBeta({
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

  factory ResourcePolicyInstanceSchedulePolicyScheduleComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicyInstanceSchedulePolicyScheduleComputeBeta(
      schedule: map['schedule'] == null ? null : map['schedule'] as String,
    );
  }
}
