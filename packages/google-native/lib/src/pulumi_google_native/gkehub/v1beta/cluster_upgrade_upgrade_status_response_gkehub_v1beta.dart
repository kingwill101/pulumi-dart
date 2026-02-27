// ignore_for_file: unused_element, unnecessary_cast

/// UpgradeStatus provides status information for each upgrade.
class ClusterUpgradeUpgradeStatusResponseGkehubV1beta {
  /// Status code of the upgrade.
  final String code;

  /// Reason for this status.
  final String reason;

  /// Last timestamp the status was updated.
  final String updateTime;

  ClusterUpgradeUpgradeStatusResponseGkehubV1beta({
    required this.code,
    required this.reason,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['reason'] = reason;
    map['updateTime'] = updateTime;
    return map;
  }

  factory ClusterUpgradeUpgradeStatusResponseGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return ClusterUpgradeUpgradeStatusResponseGkehubV1beta(
      code: map['code'] as String,
      reason: map['reason'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
