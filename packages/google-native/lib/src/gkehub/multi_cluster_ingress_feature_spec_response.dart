// ignore_for_file: unused_element, unnecessary_cast

/// **Multi-cluster Ingress**: The configuration for the MultiClusterIngress feature.
class MultiClusterIngressFeatureSpecResponse {
  /// Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: `projects/foo-proj/locations/global/memberships/bar`
  final String configMembership;

  /// Creates a new [MultiClusterIngressFeatureSpecResponse].
  /// [configMembership] Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: `projects/foo-proj/locations/global/memberships/bar`
  MultiClusterIngressFeatureSpecResponse({
    required this.configMembership,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configMembership'] = configMembership;
    return map;
  }

  factory MultiClusterIngressFeatureSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return MultiClusterIngressFeatureSpecResponse(
      configMembership: map['configMembership'] as String,
    );
  }
}
