// ignore_for_file: unused_element, unnecessary_cast

/// Schedule for an instance operation.
class ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeBeta {
  /// Specifies the frequency for the operation, using the unix-cron format.
  final String schedule;

  ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeBeta({
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['schedule'] = schedule;
    return map;
  }

  factory ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeBeta(
      schedule: map['schedule'] as String,
    );
  }
}
