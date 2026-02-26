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

  QuotaExceededInfoResponse({
    required this.dimensions,
    required this.futureLimit,
    required this.limit,
    required this.limitName,
    required this.metricName,
    required this.rolloutStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dimensions'] = dimensions;
    map['futureLimit'] = futureLimit;
    map['limit'] = limit;
    map['limitName'] = limitName;
    map['metricName'] = metricName;
    map['rolloutStatus'] = rolloutStatus;
    return map;
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
