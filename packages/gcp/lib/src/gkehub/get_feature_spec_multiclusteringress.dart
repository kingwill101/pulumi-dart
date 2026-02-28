// ignore_for_file: unused_element, unnecessary_cast

class GetFeatureSpecMulticlusteringress {
  /// Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: 'projects/foo-proj/locations/global/memberships/bar'
  final String configMembership;

  /// Creates a new [GetFeatureSpecMulticlusteringress].
  /// [configMembership] Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: 'projects/foo-proj/locations/global/memberships/bar'
  GetFeatureSpecMulticlusteringress({
    required this.configMembership,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configMembership'] = configMembership;
    return map;
  }

  factory GetFeatureSpecMulticlusteringress.fromMap(Map<String, dynamic> map) {
    return GetFeatureSpecMulticlusteringress(
      configMembership: map['configMembership'] as String,
    );
  }
}
