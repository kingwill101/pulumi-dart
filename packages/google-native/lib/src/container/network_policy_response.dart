// ignore_for_file: unused_element, unnecessary_cast


/// Configuration options for the NetworkPolicy feature. https://kubernetes.io/docs/concepts/services-networking/networkpolicies/
class NetworkPolicyResponse {
  /// Whether network policy is enabled on the cluster.
  final bool enabled;
  /// The selected network policy provider.
  final String provider;

  /// Creates a new [NetworkPolicyResponse].
  /// [enabled] Whether network policy is enabled on the cluster.
  /// [provider] The selected network policy provider.
  NetworkPolicyResponse({
    required this.enabled,
    required this.provider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'provider': provider,
    };
  }

  factory NetworkPolicyResponse.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyResponse(
      enabled: map['enabled'] as bool,
      provider: map['provider'] as String,
    );
  }
}

