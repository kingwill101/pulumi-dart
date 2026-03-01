// ignore_for_file: unused_element, unnecessary_cast

/// Schedule for an instance operation.
class ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeV1 {
  /// Specifies the frequency for the operation, using the unix-cron format.
  final String schedule;

  /// Creates a new [ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeV1].
  /// [schedule] Specifies the frequency for the operation, using the unix-cron format.
  ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeV1({
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'schedule': schedule};
  }

  factory ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeV1(
      schedule: map['schedule'] as String,
    );
  }
}
