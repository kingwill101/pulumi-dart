// ignore_for_file: unused_element, unnecessary_cast

/// Schedule for an instance operation.
class ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeV1 {
  /// Specifies the frequency for the operation, using the unix-cron format.
  final String schedule;

  ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeV1({
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['schedule'] = schedule;
    return map;
  }

  factory ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeV1(
      schedule: map['schedule'] as String,
    );
  }
}
