// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNetworkPolicy {
  /// Whether network policy is enabled on the cluster.
  final bool enabled;

  /// The selected network policy provider.
  final String provider;

  GetClusterNetworkPolicy({
    required this.enabled,
    required this.provider,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['provider'] = provider;
    return map;
  }

  factory GetClusterNetworkPolicy.fromMap(Map<String, dynamic> map) {
    return GetClusterNetworkPolicy(
      enabled: map['enabled'] as bool,
      provider: map['provider'] as String,
    );
  }
}
