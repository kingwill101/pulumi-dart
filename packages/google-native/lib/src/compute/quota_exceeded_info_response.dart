// ignore_for_file: unused_element, unnecessary_cast


/// Additional details for quota exceeded error for resource quota.
class QuotaExceededInfoResponse {
  /// The map holding related quota dimensions.
  final Map<String, String> dimensions;
  /// Future quota limit being rolled out. The limit's unit depends on the quota type or metric.
  final double futureLimit;
  /// Current effective quota limit. The limit's unit depends on the quota type or metric.
  final double limit;
  /// The name of the quota limit.
  final String limitName;
  /// The Compute Engine quota metric name.
  final String metricName;
  /// Rollout status of the future quota limit.
  final String rolloutStatus;

  /// Creates a new [QuotaExceededInfoResponse].
  /// [dimensions] The map holding related quota dimensions.
  /// [futureLimit] Future quota limit being rolled out. The limit's unit depends on the quota type or metric.
  /// [limit] Current effective quota limit. The limit's unit depends on the quota type or metric.
  /// [limitName] The name of the quota limit.
  /// [metricName] The Compute Engine quota metric name.
  /// [rolloutStatus] Rollout status of the future quota limit.
  QuotaExceededInfoResponse({
    required this.dimensions,
    required this.futureLimit,
    required this.limit,
    required this.limitName,
    required this.metricName,
    required this.rolloutStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': dimensions,
      'futureLimit': futureLimit,
      'limit': limit,
      'limitName': limitName,
      'metricName': metricName,
      'rolloutStatus': rolloutStatus,
    };
  }

  factory QuotaExceededInfoResponse.fromMap(Map<String, dynamic> map) {
    return QuotaExceededInfoResponse(
      dimensions: (map['dimensions'] as Map).cast<String, String>(),
      futureLimit: map['futureLimit'] as double,
      limit: map['limit'] as double,
      limitName: map['limitName'] as String,
      metricName: map['metricName'] as String,
      rolloutStatus: map['rolloutStatus'] as String,
    );
  }
}

