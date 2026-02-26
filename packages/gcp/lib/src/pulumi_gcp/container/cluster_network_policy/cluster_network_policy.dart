// ignore_for_file: unused_element, unnecessary_cast

class ClusterNetworkPolicy {
  /// Whether network policy is enabled on the cluster.
  final bool enabled;

  /// The selected network policy provider. Defaults to PROVIDER_UNSPECIFIED.
  final String? provider;

  ClusterNetworkPolicy({
    required this.enabled,
    this.provider,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    final providerValue = provider;
    if (providerValue != null) {
      map['provider'] = providerValue;
    }
    return map;
  }

  factory ClusterNetworkPolicy.fromMap(Map<String, dynamic> map) {
    return ClusterNetworkPolicy(
      enabled: map['enabled'] as bool,
      provider: map['provider'] == null ? null : map['provider'] as String,
    );
  }
}
