// ignore_for_file: unused_element, unnecessary_cast

class ResourcePolicyInstanceSchedulePolicyVmStopSchedule {
  /// Specifies the frequency for the operation, using the unix-cron format.
  final String schedule;

  ResourcePolicyInstanceSchedulePolicyVmStopSchedule({
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['schedule'] = schedule;
    return map;
  }

  factory ResourcePolicyInstanceSchedulePolicyVmStopSchedule.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicyInstanceSchedulePolicyVmStopSchedule(
      schedule: map['schedule'] as String,
    );
  }
}
