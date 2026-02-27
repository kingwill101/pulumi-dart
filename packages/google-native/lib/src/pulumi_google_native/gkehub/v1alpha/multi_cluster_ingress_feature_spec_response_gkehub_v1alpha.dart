// ignore_for_file: unused_element, unnecessary_cast

/// **Multi-cluster Ingress**: The configuration for the MultiClusterIngress feature.
class MultiClusterIngressFeatureSpecResponseGkehubV1alpha {
  /// Deprecated: This field will be ignored and should not be set. Customer's billing structure.
  final String billing;

  /// Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: `projects/foo-proj/locations/global/memberships/bar`
  final String configMembership;

  MultiClusterIngressFeatureSpecResponseGkehubV1alpha({
    required this.billing,
    required this.configMembership,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['billing'] = billing;
    map['configMembership'] = configMembership;
    return map;
  }

  factory MultiClusterIngressFeatureSpecResponseGkehubV1alpha.fromMap(
      Map<String, dynamic> map) {
    return MultiClusterIngressFeatureSpecResponseGkehubV1alpha(
      billing: map['billing'] as String,
      configMembership: map['configMembership'] as String,
    );
  }
}
