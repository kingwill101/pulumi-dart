// ignore_for_file: unused_element, unnecessary_cast

class LakeAssetStatus {
  /// Number of active assets.
  final int? activeAssets;

  /// Number of assets that are in process of updating the security policy on attached resources.
  final int? securityPolicyApplyingAssets;

  /// Output only. The time when the lake was last updated.
  final String? updateTime;

  LakeAssetStatus({
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

  factory LakeAssetStatus.fromMap(Map<String, dynamic> map) {
    return LakeAssetStatus(
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
