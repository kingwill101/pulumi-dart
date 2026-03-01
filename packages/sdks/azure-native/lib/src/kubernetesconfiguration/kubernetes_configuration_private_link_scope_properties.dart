// ignore_for_file: unused_element, unnecessary_cast


/// Properties that define a Azure Arc PrivateLinkScope resource.
class KubernetesConfigurationPrivateLinkScopeProperties {
  /// Managed Cluster ARM ID for the private link scope  (Required)
  final String clusterResourceId;
  /// Indicates whether machines associated with the private link scope can also use public Azure Arc service endpoints.
  final String? publicNetworkAccess;

  /// Creates a new [KubernetesConfigurationPrivateLinkScopeProperties].
  /// [clusterResourceId] Managed Cluster ARM ID for the private link scope  (Required)
  /// [publicNetworkAccess] Indicates whether machines associated with the private link scope can also use public Azure Arc service endpoints.
  KubernetesConfigurationPrivateLinkScopeProperties({
    required this.clusterResourceId,
    this.publicNetworkAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterResourceId': clusterResourceId,
      'publicNetworkAccess': ?publicNetworkAccess,
    };
  }

  factory KubernetesConfigurationPrivateLinkScopeProperties.fromMap(Map<String, dynamic> map) {
    return KubernetesConfigurationPrivateLinkScopeProperties(
      clusterResourceId: map['clusterResourceId'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
    );
  }
}

