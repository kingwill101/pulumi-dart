// ignore_for_file: unused_element, unnecessary_cast

/// Target scaling by request utilization. Only applicable in the App Engine flexible environment.
class RequestUtilizationAppengineV1beta {
  /// Target number of concurrent requests.
  final int? targetConcurrentRequests;

  /// Target requests per second.
  final int? targetRequestCountPerSecond;

  RequestUtilizationAppengineV1beta({
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

  factory RequestUtilizationAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return RequestUtilizationAppengineV1beta(
      targetConcurrentRequests: map['targetConcurrentRequests'] == null
          ? null
          : map['targetConcurrentRequests'] as int,
      targetRequestCountPerSecond: map['targetRequestCountPerSecond'] == null
          ? null
          : map['targetRequestCountPerSecond'] as int,
    );
  }
}
