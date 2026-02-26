// ignore_for_file: unused_element, unnecessary_cast

/// **Multi-cluster Ingress**: The configuration for the MultiClusterIngress feature.
class MultiClusterIngressFeatureSpecResponse3 {
  /// Deprecated: This field will be ignored and should not be set. Customer's billing structure.
  final String billing;

  /// Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: `projects/foo-proj/locations/global/memberships/bar`
  final String configMembership;

  MultiClusterIngressFeatureSpecResponse3({
    required this.billing,
    required this.configMembership,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['billing'] = billing;
    map['configMembership'] = configMembership;
    return map;
  }

  factory MultiClusterIngressFeatureSpecResponse3.fromMap(
      Map<String, dynamic> map) {
    return MultiClusterIngressFeatureSpecResponse3(
      billing: map['billing'] as String,
      configMembership: map['configMembership'] as String,
    );
  }
}
