// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for the NetworkPolicy feature. https://kubernetes.io/docs/concepts/services-networking/networkpolicies/
class NetworkPolicyResponse2 {
  /// Whether network policy is enabled on the cluster.
  final bool enabled;

  /// The selected network policy provider.
  final String provider;

  NetworkPolicyResponse2({
    required this.enabled,
    required this.provider,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['provider'] = provider;
    return map;
  }

  factory NetworkPolicyResponse2.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyResponse2(
      enabled: map['enabled'] as bool,
      provider: map['provider'] as String,
    );
  }
}
