// ignore_for_file: unused_element, unnecessary_cast

/// Aggregated status of the underlying assets of a lake or zone.
class GoogleCloudDataplexV1AssetStatusResponse {
  /// Number of active assets.
  final int activeAssets;

  /// Number of assets that are in process of updating the security policy on attached resources.
  final int securityPolicyApplyingAssets;

  /// Last update time of the status.
  final String updateTime;

  GoogleCloudDataplexV1AssetStatusResponse({
    required this.activeAssets,
    required this.securityPolicyApplyingAssets,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['activeAssets'] = activeAssets;
    map['securityPolicyApplyingAssets'] = securityPolicyApplyingAssets;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GoogleCloudDataplexV1AssetStatusResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1AssetStatusResponse(
      activeAssets: map['activeAssets'] as int,
      securityPolicyApplyingAssets: map['securityPolicyApplyingAssets'] as int,
      updateTime: map['updateTime'] as String,
    );
  }
}
