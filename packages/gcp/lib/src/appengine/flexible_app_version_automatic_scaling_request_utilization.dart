// ignore_for_file: unused_element, unnecessary_cast

class FlexibleAppVersionAutomaticScalingRequestUtilization {
  /// Target number of concurrent requests.
  final double? targetConcurrentRequests;

  /// Target requests per second.
  final String? targetRequestCountPerSecond;

  /// Creates a new [FlexibleAppVersionAutomaticScalingRequestUtilization].
  /// [targetConcurrentRequests] Target number of concurrent requests.
  /// [targetRequestCountPerSecond] Target requests per second.
  FlexibleAppVersionAutomaticScalingRequestUtilization({
    this.targetConcurrentRequests,
    this.targetRequestCountPerSecond,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final targetConcurrentRequestsValue = targetConcurrentRequests;
    if (targetConcurrentRequestsValue != null) {
      map['targetConcurrentRequests'] = targetConcurrentRequestsValue;
    }
    final targetRequestCountPerSecondValue = targetRequestCountPerSecond;
    if (targetRequestCountPerSecondValue != null) {
      map['targetRequestCountPerSecond'] = targetRequestCountPerSecondValue;
    }
    return map;
  }

  factory FlexibleAppVersionAutomaticScalingRequestUtilization.fromMap(
      Map<String, dynamic> map) {
    return FlexibleAppVersionAutomaticScalingRequestUtilization(
      targetConcurrentRequests: map['targetConcurrentRequests'] == null
          ? null
          : map['targetConcurrentRequests'] as double,
      targetRequestCountPerSecond: map['targetRequestCountPerSecond'] == null
          ? null
          : map['targetRequestCountPerSecond'] as String,
    );
  }
}
