// ignore_for_file: unused_element, unnecessary_cast

/// Target scaling by request utilization. Only applicable in the App Engine flexible environment.
class RequestUtilizationResponseAppengineV1beta {
  /// Target number of concurrent requests.
  final int targetConcurrentRequests;

  /// Target requests per second.
  final int targetRequestCountPerSecond;

  RequestUtilizationResponseAppengineV1beta({
    required this.targetConcurrentRequests,
    required this.targetRequestCountPerSecond,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetConcurrentRequests'] = targetConcurrentRequests;
    map['targetRequestCountPerSecond'] = targetRequestCountPerSecond;
    return map;
  }

  factory RequestUtilizationResponseAppengineV1beta.fromMap(
      Map<String, dynamic> map) {
    return RequestUtilizationResponseAppengineV1beta(
      targetConcurrentRequests: map['targetConcurrentRequests'] as int,
      targetRequestCountPerSecond: map['targetRequestCountPerSecond'] as int,
    );
  }
}
