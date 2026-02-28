// ignore_for_file: unused_element, unnecessary_cast

/// Schedule for an instance operation.
class ResourcePolicyInstanceSchedulePolicyScheduleResponse {
  /// Specifies the frequency for the operation, using the unix-cron format.
  final String schedule;

  /// Creates a new [ResourcePolicyInstanceSchedulePolicyScheduleResponse].
  /// [schedule] Specifies the frequency for the operation, using the unix-cron format.
  ResourcePolicyInstanceSchedulePolicyScheduleResponse({
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['schedule'] = schedule;
    return map;
  }

  factory ResourcePolicyInstanceSchedulePolicyScheduleResponse.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicyInstanceSchedulePolicyScheduleResponse(
      schedule: map['schedule'] as String,
    );
  }
}
