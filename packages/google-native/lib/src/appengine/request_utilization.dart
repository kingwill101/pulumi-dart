// ignore_for_file: unused_element, unnecessary_cast

/// Target scaling by request utilization. Only applicable in the App Engine flexible environment.
class RequestUtilization {
  /// Target number of concurrent requests.
  final int? targetConcurrentRequests;

  /// Target requests per second.
  final int? targetRequestCountPerSecond;

  /// Creates a new [RequestUtilization].
  /// [targetConcurrentRequests] Target number of concurrent requests.
  /// [targetRequestCountPerSecond] Target requests per second.
  RequestUtilization({
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

  factory RequestUtilization.fromMap(Map<String, dynamic> map) {
    return RequestUtilization(
      targetConcurrentRequests: map['targetConcurrentRequests'] == null
          ? null
          : map['targetConcurrentRequests'] as int,
      targetRequestCountPerSecond: map['targetRequestCountPerSecond'] == null
          ? null
          : map['targetRequestCountPerSecond'] as int,
    );
  }
}
