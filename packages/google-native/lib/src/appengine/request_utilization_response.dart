// ignore_for_file: unused_element, unnecessary_cast


/// Target scaling by request utilization. Only applicable in the App Engine flexible environment.
class RequestUtilizationResponse {
  /// Target number of concurrent requests.
  final int targetConcurrentRequests;
  /// Target requests per second.
  final int targetRequestCountPerSecond;

  /// Creates a new [RequestUtilizationResponse].
  /// [targetConcurrentRequests] Target number of concurrent requests.
  /// [targetRequestCountPerSecond] Target requests per second.
  RequestUtilizationResponse({
    required this.targetConcurrentRequests,
    required this.targetRequestCountPerSecond,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetConcurrentRequests': targetConcurrentRequests,
      'targetRequestCountPerSecond': targetRequestCountPerSecond,
    };
  }

  factory RequestUtilizationResponse.fromMap(Map<String, dynamic> map) {
    return RequestUtilizationResponse(
      targetConcurrentRequests: map['targetConcurrentRequests'] as int,
      targetRequestCountPerSecond: map['targetRequestCountPerSecond'] as int,
    );
  }
}

