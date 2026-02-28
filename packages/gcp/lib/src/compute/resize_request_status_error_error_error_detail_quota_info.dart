// ignore_for_file: unused_element, unnecessary_cast

class ResizeRequestStatusErrorErrorErrorDetailQuotaInfo {
  /// (Output)
  /// The map holding related quota dimensions
  final Map<String, String>? dimensions;

  /// (Output)
  /// Future quota limit being rolled out. The limit's unit depends on the quota type or metric.
  final int? futureLimit;

  /// (Output)
  /// Current effective quota limit. The limit's unit depends on the quota type or metric.
  final int? limit;

  /// (Output)
  /// The name of the quota limit.
  final String? limitName;

  /// (Output)
  /// The Compute Engine quota metric name.
  final String? metricName;

  /// (Output)
  /// Rollout status of the future quota limit.
  final String? rolloutStatus;

  /// Creates a new [ResizeRequestStatusErrorErrorErrorDetailQuotaInfo].
  /// [dimensions] (Output)
  /// [futureLimit] (Output)
  /// [limit] (Output)
  /// [limitName] (Output)
  /// [metricName] (Output)
  /// [rolloutStatus] (Output)
  ResizeRequestStatusErrorErrorErrorDetailQuotaInfo({
    this.dimensions,
    this.futureLimit,
    this.limit,
    this.limitName,
    this.metricName,
    this.rolloutStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dimensionsValue = dimensions;
    if (dimensionsValue != null) {
      map['dimensions'] = dimensionsValue;
    }
    final futureLimitValue = futureLimit;
    if (futureLimitValue != null) {
      map['futureLimit'] = futureLimitValue;
    }
    final limitValue = limit;
    if (limitValue != null) {
      map['limit'] = limitValue;
    }
    final limitNameValue = limitName;
    if (limitNameValue != null) {
      map['limitName'] = limitNameValue;
    }
    final metricNameValue = metricName;
    if (metricNameValue != null) {
      map['metricName'] = metricNameValue;
    }
    final rolloutStatusValue = rolloutStatus;
    if (rolloutStatusValue != null) {
      map['rolloutStatus'] = rolloutStatusValue;
    }
    return map;
  }

  factory ResizeRequestStatusErrorErrorErrorDetailQuotaInfo.fromMap(
      Map<String, dynamic> map) {
    return ResizeRequestStatusErrorErrorErrorDetailQuotaInfo(
      dimensions: map['dimensions'] == null
          ? null
          : (map['dimensions'] as Map).cast<String, String>(),
      futureLimit:
          map['futureLimit'] == null ? null : map['futureLimit'] as int,
      limit: map['limit'] == null ? null : map['limit'] as int,
      limitName: map['limitName'] == null ? null : map['limitName'] as String,
      metricName:
          map['metricName'] == null ? null : map['metricName'] as String,
      rolloutStatus:
          map['rolloutStatus'] == null ? null : map['rolloutStatus'] as String,
    );
  }
}
