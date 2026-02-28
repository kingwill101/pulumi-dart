// ignore_for_file: unused_element, unnecessary_cast

/// EnterpriseConfig is the cluster enterprise configuration.
class EnterpriseConfigResponse {
  /// [Output only] cluster_tier specifies the premium tier of the cluster.
  final String clusterTier;

  /// Creates a new [EnterpriseConfigResponse].
  /// [clusterTier] [Output only] cluster_tier specifies the premium tier of the cluster.
  EnterpriseConfigResponse({
    required this.clusterTier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterTier'] = clusterTier;
    return map;
  }

  factory EnterpriseConfigResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseConfigResponse(
      clusterTier: map['clusterTier'] as String,
    );
  }
}
