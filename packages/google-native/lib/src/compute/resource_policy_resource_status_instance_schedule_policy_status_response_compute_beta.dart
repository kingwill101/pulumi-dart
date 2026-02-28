// ignore_for_file: unused_element, unnecessary_cast

class ResourcePolicyResourceStatusInstanceSchedulePolicyStatusResponseComputeBeta {
  /// The last time the schedule successfully ran. The timestamp is an RFC3339 string.
  final String lastRunStartTime;

  /// The next time the schedule is planned to run. The actual time might be slightly different. The timestamp is an RFC3339 string.
  final String nextRunStartTime;

  /// Creates a new [ResourcePolicyResourceStatusInstanceSchedulePolicyStatusResponseComputeBeta].
  /// [lastRunStartTime] The last time the schedule successfully ran. The timestamp is an RFC3339 string.
  /// [nextRunStartTime] The next time the schedule is planned to run. The actual time might be slightly different. The timestamp is an RFC3339 string.
  ResourcePolicyResourceStatusInstanceSchedulePolicyStatusResponseComputeBeta({
    required this.lastRunStartTime,
    required this.nextRunStartTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lastRunStartTime'] = lastRunStartTime;
    map['nextRunStartTime'] = nextRunStartTime;
    return map;
  }

  factory ResourcePolicyResourceStatusInstanceSchedulePolicyStatusResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicyResourceStatusInstanceSchedulePolicyStatusResponseComputeBeta(
      lastRunStartTime: map['lastRunStartTime'] as String,
      nextRunStartTime: map['nextRunStartTime'] as String,
    );
  }
}
