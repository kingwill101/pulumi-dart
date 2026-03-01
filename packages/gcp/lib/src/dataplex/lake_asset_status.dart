// ignore_for_file: unused_element, unnecessary_cast

class LakeAssetStatus {
  /// Number of active assets.
  final int? activeAssets;

  /// Number of assets that are in process of updating the security policy on attached resources.
  final int? securityPolicyApplyingAssets;

  /// Output only. The time when the lake was last updated.
  final String? updateTime;

  /// Creates a new [LakeAssetStatus].
  /// [activeAssets] Number of active assets.
  /// [securityPolicyApplyingAssets] Number of assets that are in process of updating the security policy on attached resources.
  /// [updateTime] Output only. The time when the lake was last updated.
  LakeAssetStatus({
    this.activeAssets,
    this.securityPolicyApplyingAssets,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeAssets': ?activeAssets,
      'securityPolicyApplyingAssets': ?securityPolicyApplyingAssets,
      'updateTime': ?updateTime,
    };
  }

  factory LakeAssetStatus.fromMap(Map<String, dynamic> map) {
    return LakeAssetStatus(
      activeAssets: map['activeAssets'] == null
          ? null
          : map['activeAssets'] as int,
      securityPolicyApplyingAssets: map['securityPolicyApplyingAssets'] == null
          ? null
          : map['securityPolicyApplyingAssets'] as int,
      updateTime: map['updateTime'] == null
          ? null
          : map['updateTime'] as String,
    );
  }
}
