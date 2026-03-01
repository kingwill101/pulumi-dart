// ignore_for_file: unused_element, unnecessary_cast


/// Security profile to enable security features on cilium based cluster.
class AdvancedNetworkingSecurityResponse {
  /// Enable advanced network policies. This allows users to configure Layer 7 network policies (FQDN, HTTP, Kafka). Policies themselves must be configured via the Cilium Network Policy resources, see https://docs.cilium.io/en/latest/security/policy/index.html. This can be enabled only on cilium-based clusters. If not specified, the default value is FQDN if security.enabled is set to true.
  final String? advancedNetworkPolicies;
  /// This feature allows user to configure network policy based on DNS (FQDN) names. It can be enabled only on cilium based clusters. If not specified, the default is false.
  final bool? enabled;

  /// Creates a new [AdvancedNetworkingSecurityResponse].
  /// [advancedNetworkPolicies] Enable advanced network policies. This allows users to configure Layer 7 network policies (FQDN, HTTP, Kafka). Policies themselves must be configured via the Cilium Network Policy resources, see https://docs.cilium.io/en/latest/security/policy/index.html. This can be enabled only on cilium-based clusters. If not specified, the default value is FQDN if security.enabled is set to true.
  /// [enabled] This feature allows user to configure network policy based on DNS (FQDN) names. It can be enabled only on cilium based clusters. If not specified, the default is false.
  AdvancedNetworkingSecurityResponse({
    this.advancedNetworkPolicies,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedNetworkPolicies': ?advancedNetworkPolicies,
      'enabled': ?enabled,
    };
  }

  factory AdvancedNetworkingSecurityResponse.fromMap(Map<String, dynamic> map) {
    return AdvancedNetworkingSecurityResponse(
      advancedNetworkPolicies: map['advancedNetworkPolicies'] == null ? null : map['advancedNetworkPolicies'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

