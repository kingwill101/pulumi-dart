// ignore_for_file: unused_element, unnecessary_cast

class GetClusterEnterpriseConfig {
  /// Indicates the effective cluster tier. Available options include STANDARD and ENTERPRISE.
  final String clusterTier;

  /// Indicates the desired cluster tier. Available options include STANDARD and ENTERPRISE.
  final String desiredTier;

  /// Creates a new [GetClusterEnterpriseConfig].
  /// [clusterTier] Indicates the effective cluster tier. Available options include STANDARD and ENTERPRISE.
  /// [desiredTier] Indicates the desired cluster tier. Available options include STANDARD and ENTERPRISE.
  GetClusterEnterpriseConfig({
    required this.clusterTier,
    required this.desiredTier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterTier'] = clusterTier;
    map['desiredTier'] = desiredTier;
    return map;
  }

  factory GetClusterEnterpriseConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterEnterpriseConfig(
      clusterTier: map['clusterTier'] as String,
      desiredTier: map['desiredTier'] as String,
    );
  }
}
