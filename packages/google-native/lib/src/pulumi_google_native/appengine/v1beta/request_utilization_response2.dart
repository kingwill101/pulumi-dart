// ignore_for_file: unused_element, unnecessary_cast

/// Target scaling by request utilization. Only applicable in the App Engine flexible environment.
class RequestUtilizationResponse2 {
  /// Target number of concurrent requests.
  final int targetConcurrentRequests;

  /// Target requests per second.
  final int targetRequestCountPerSecond;

  RequestUtilizationResponse2({
    required this.targetConcurrentRequests,
    required this.targetRequestCountPerSecond,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetConcurrentRequests'] = targetConcurrentRequests;
    map['targetRequestCountPerSecond'] = targetRequestCountPerSecond;
    return map;
  }

  factory RequestUtilizationResponse2.fromMap(Map<String, dynamic> map) {
    return RequestUtilizationResponse2(
      targetConcurrentRequests: map['targetConcurrentRequests'] as int,
      targetRequestCountPerSecond: map['targetRequestCountPerSecond'] as int,
    );
  }
}
