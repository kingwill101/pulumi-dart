// ignore_for_file: unused_element, unnecessary_cast

class FeatureSpecMulticlusteringress {
  /// Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: `projects/foo-proj/locations/global/memberships/bar`
  final String configMembership;

  /// Creates a new [FeatureSpecMulticlusteringress].
  /// [configMembership] Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: `projects/foo-proj/locations/global/memberships/bar`
  FeatureSpecMulticlusteringress({required this.configMembership});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'configMembership': configMembership};
  }

  factory FeatureSpecMulticlusteringress.fromMap(Map<String, dynamic> map) {
    return FeatureSpecMulticlusteringress(
      configMembership: map['configMembership'] as String,
    );
  }
}
