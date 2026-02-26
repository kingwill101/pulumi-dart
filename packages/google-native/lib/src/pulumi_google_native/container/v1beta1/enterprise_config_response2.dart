// ignore_for_file: unused_element, unnecessary_cast

/// EnterpriseConfig is the cluster enterprise configuration.
class EnterpriseConfigResponse2 {
  /// [Output only] cluster_tier specifies the premium tier of the cluster.
  final String clusterTier;

  EnterpriseConfigResponse2({
    required this.clusterTier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterTier'] = clusterTier;
    return map;
  }

  factory EnterpriseConfigResponse2.fromMap(Map<String, dynamic> map) {
    return EnterpriseConfigResponse2(
      clusterTier: map['clusterTier'] as String,
    );
  }
}
