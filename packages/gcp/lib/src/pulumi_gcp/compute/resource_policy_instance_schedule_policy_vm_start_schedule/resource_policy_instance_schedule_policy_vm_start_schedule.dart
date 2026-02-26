// ignore_for_file: unused_element, unnecessary_cast

class ResourcePolicyInstanceSchedulePolicyVmStartSchedule {
  /// Specifies the frequency for the operation, using the unix-cron format.
  final String schedule;

  ResourcePolicyInstanceSchedulePolicyVmStartSchedule({
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['schedule'] = schedule;
    return map;
  }

  factory ResourcePolicyInstanceSchedulePolicyVmStartSchedule.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicyInstanceSchedulePolicyVmStartSchedule(
      schedule: map['schedule'] as String,
    );
  }
}
