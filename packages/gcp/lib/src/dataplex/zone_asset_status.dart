// ignore_for_file: unused_element, unnecessary_cast

class ZoneAssetStatus {
  /// Number of active assets.
  final int? activeAssets;

  /// Number of assets that are in process of updating the security policy on attached resources.
  final int? securityPolicyApplyingAssets;

  /// Output only. The time when the zone was last updated.
  final String? updateTime;

  /// Creates a new [ZoneAssetStatus].
  /// [activeAssets] Number of active assets.
  /// [securityPolicyApplyingAssets] Number of assets that are in process of updating the security policy on attached resources.
  /// [updateTime] Output only. The time when the zone was last updated.
  ZoneAssetStatus({
    this.activeAssets,
    this.securityPolicyApplyingAssets,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activeAssetsValue = activeAssets;
    if (activeAssetsValue != null) {
      map['activeAssets'] = activeAssetsValue;
    }
    final securityPolicyApplyingAssetsValue = securityPolicyApplyingAssets;
    if (securityPolicyApplyingAssetsValue != null) {
      map['securityPolicyApplyingAssets'] = securityPolicyApplyingAssetsValue;
    }
    final updateTimeValue = updateTime;
    if (updateTimeValue != null) {
      map['updateTime'] = updateTimeValue;
    }
    return map;
  }

  factory ZoneAssetStatus.fromMap(Map<String, dynamic> map) {
    return ZoneAssetStatus(
      activeAssets:
          map['activeAssets'] == null ? null : map['activeAssets'] as int,
      securityPolicyApplyingAssets: map['securityPolicyApplyingAssets'] == null
          ? null
          : map['securityPolicyApplyingAssets'] as int,
      updateTime:
          map['updateTime'] == null ? null : map['updateTime'] as String,
    );
  }
}
