// ignore_for_file: unused_element, unnecessary_cast

class ClusterEnterpriseConfig {
  /// Indicates the effective cluster tier. Available options include STANDARD and ENTERPRISE.
  final String? clusterTier;

  /// (DEPRECATED) Sets the tier of the cluster. Available options include `STANDARD` and `ENTERPRISE`. Deprecated as GKE Enterprise features are now available without an Enterprise tier. See https://cloud.google.com/blog/products/containers-kubernetes/gke-gets-new-pricing-and-capabilities-on-10th-birthday for the announcement of this change.
  final String? desiredTier;

  /// Creates a new [ClusterEnterpriseConfig].
  /// [clusterTier] Indicates the effective cluster tier. Available options include STANDARD and ENTERPRISE.
  /// [desiredTier] (DEPRECATED) Sets the tier of the cluster. Available options include `STANDARD` and `ENTERPRISE`. Deprecated as GKE Enterprise features are now available without an Enterprise tier. See https://cloud.google.com/blog/products/containers-kubernetes/gke-gets-new-pricing-and-capabilities-on-10th-birthday for the announcement of this change.
  ClusterEnterpriseConfig({
    this.clusterTier,
    this.desiredTier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clusterTierValue = clusterTier;
    if (clusterTierValue != null) {
      map['clusterTier'] = clusterTierValue;
    }
    final desiredTierValue = desiredTier;
    if (desiredTierValue != null) {
      map['desiredTier'] = desiredTierValue;
    }
    return map;
  }

  factory ClusterEnterpriseConfig.fromMap(Map<String, dynamic> map) {
    return ClusterEnterpriseConfig(
      clusterTier:
          map['clusterTier'] == null ? null : map['clusterTier'] as String,
      desiredTier:
          map['desiredTier'] == null ? null : map['desiredTier'] as String,
    );
  }
}
