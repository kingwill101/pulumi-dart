// ignore_for_file: unused_element, unnecessary_cast

/// GKEUpgradeFeatureCondition describes the condition of the feature for GKE clusters at a certain point of time.
class ClusterUpgradeGKEUpgradeFeatureConditionResponse {
  /// Reason why the feature is in this status.
  final String reason;

  /// Status of the condition, one of True, False, Unknown.
  final String status;

  /// Type of the condition, for example, "ready".
  final String type;

  /// Last timestamp the condition was updated.
  final String updateTime;

  /// Creates a new [ClusterUpgradeGKEUpgradeFeatureConditionResponse].
  /// [reason] Reason why the feature is in this status.
  /// [status] Status of the condition, one of True, False, Unknown.
  /// [type] Type of the condition, for example, "ready".
  /// [updateTime] Last timestamp the condition was updated.
  ClusterUpgradeGKEUpgradeFeatureConditionResponse({
    required this.reason,
    required this.status,
    required this.type,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['reason'] = reason;
    map['status'] = status;
    map['type'] = type;
    map['updateTime'] = updateTime;
    return map;
  }

  factory ClusterUpgradeGKEUpgradeFeatureConditionResponse.fromMap(
      Map<String, dynamic> map) {
    return ClusterUpgradeGKEUpgradeFeatureConditionResponse(
      reason: map['reason'] as String,
      status: map['status'] as String,
      type: map['type'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
