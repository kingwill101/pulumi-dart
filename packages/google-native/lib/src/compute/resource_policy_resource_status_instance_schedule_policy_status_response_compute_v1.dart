// ignore_for_file: unused_element, unnecessary_cast

class ResourcePolicyResourceStatusInstanceSchedulePolicyStatusResponseComputeV1 {
  /// The last time the schedule successfully ran. The timestamp is an RFC3339 string.
  final String lastRunStartTime;

  /// The next time the schedule is planned to run. The actual time might be slightly different. The timestamp is an RFC3339 string.
  final String nextRunStartTime;

  /// Creates a new [ResourcePolicyResourceStatusInstanceSchedulePolicyStatusResponseComputeV1].
  /// [lastRunStartTime] The last time the schedule successfully ran. The timestamp is an RFC3339 string.
  /// [nextRunStartTime] The next time the schedule is planned to run. The actual time might be slightly different. The timestamp is an RFC3339 string.
  ResourcePolicyResourceStatusInstanceSchedulePolicyStatusResponseComputeV1({
    required this.lastRunStartTime,
    required this.nextRunStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastRunStartTime': lastRunStartTime,
      'nextRunStartTime': nextRunStartTime,
    };
  }

  factory ResourcePolicyResourceStatusInstanceSchedulePolicyStatusResponseComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourcePolicyResourceStatusInstanceSchedulePolicyStatusResponseComputeV1(
      lastRunStartTime: map['lastRunStartTime'] as String,
      nextRunStartTime: map['nextRunStartTime'] as String,
    );
  }
}
