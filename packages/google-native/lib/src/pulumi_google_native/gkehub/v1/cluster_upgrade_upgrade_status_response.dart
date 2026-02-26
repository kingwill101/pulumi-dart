// ignore_for_file: unused_element, unnecessary_cast

/// UpgradeStatus provides status information for each upgrade.
class ClusterUpgradeUpgradeStatusResponse {
  /// Status code of the upgrade.
  final String code;

  /// Reason for this status.
  final String reason;

  /// Last timestamp the status was updated.
  final String updateTime;

  ClusterUpgradeUpgradeStatusResponse({
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

  factory ClusterUpgradeUpgradeStatusResponse.fromMap(
      Map<String, dynamic> map) {
    return ClusterUpgradeUpgradeStatusResponse(
      code: map['code'] as String,
      reason: map['reason'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
