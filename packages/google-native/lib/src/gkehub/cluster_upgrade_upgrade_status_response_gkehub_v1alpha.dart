// ignore_for_file: unused_element, unnecessary_cast

/// UpgradeStatus provides status information for each upgrade.
class ClusterUpgradeUpgradeStatusResponseGkehubV1alpha {
  /// Status code of the upgrade.
  final String code;

  /// Reason for this status.
  final String reason;

  /// Last timestamp the status was updated.
  final String updateTime;

  /// Creates a new [ClusterUpgradeUpgradeStatusResponseGkehubV1alpha].
  /// [code] Status code of the upgrade.
  /// [reason] Reason for this status.
  /// [updateTime] Last timestamp the status was updated.
  ClusterUpgradeUpgradeStatusResponseGkehubV1alpha({
    required this.code,
    required this.reason,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'reason': reason,
      'updateTime': updateTime,
    };
  }

  factory ClusterUpgradeUpgradeStatusResponseGkehubV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterUpgradeUpgradeStatusResponseGkehubV1alpha(
      code: map['code'] as String,
      reason: map['reason'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
