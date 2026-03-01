// ignore_for_file: unused_element, unnecessary_cast

/// Target scaling by request utilization. Only applicable in the App Engine flexible environment.
class RequestUtilizationAppengineV1beta {
  /// Target number of concurrent requests.
  final int? targetConcurrentRequests;

  /// Target requests per second.
  final int? targetRequestCountPerSecond;

  /// Creates a new [RequestUtilizationAppengineV1beta].
  /// [targetConcurrentRequests] Target number of concurrent requests.
  /// [targetRequestCountPerSecond] Target requests per second.
  RequestUtilizationAppengineV1beta({
    this.targetConcurrentRequests,
    this.targetRequestCountPerSecond,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetConcurrentRequests': ?targetConcurrentRequests,
      'targetRequestCountPerSecond': ?targetRequestCountPerSecond,
    };
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
