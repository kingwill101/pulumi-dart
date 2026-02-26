// ignore_for_file: unused_element, unnecessary_cast

/// Schedule for an instance operation.
class ResourcePolicyInstanceSchedulePolicyScheduleResponse2 {
  /// Specifies the frequency for the operation, using the unix-cron format.
  final String schedule;

  ResourcePolicyInstanceSchedulePolicyScheduleResponse2({
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['schedule'] = schedule;
    return map;
  }

  factory ResourcePolicyInstanceSchedulePolicyScheduleResponse2.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicyInstanceSchedulePolicyScheduleResponse2(
      schedule: map['schedule'] as String,
    );
  }
}
