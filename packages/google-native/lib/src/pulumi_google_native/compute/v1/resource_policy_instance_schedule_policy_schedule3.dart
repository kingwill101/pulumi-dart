// ignore_for_file: unused_element, unnecessary_cast

/// Schedule for an instance operation.
class ResourcePolicyInstanceSchedulePolicySchedule3 {
  /// Specifies the frequency for the operation, using the unix-cron format.
  final String? schedule;

  ResourcePolicyInstanceSchedulePolicySchedule3({
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

  factory ResourcePolicyInstanceSchedulePolicySchedule3.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicyInstanceSchedulePolicySchedule3(
      schedule: map['schedule'] == null ? null : map['schedule'] as String,
    );
  }
}
