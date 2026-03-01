// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNetworkPolicy {
  /// Whether network policy is enabled on the cluster.
  final bool enabled;

  /// The selected network policy provider.
  final String provider;

  /// Creates a new [GetClusterNetworkPolicy].
  /// [enabled] Whether network policy is enabled on the cluster.
  /// [provider] The selected network policy provider.
  GetClusterNetworkPolicy({required this.enabled, required this.provider});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled, 'provider': provider};
  }

  factory GetClusterNetworkPolicy.fromMap(Map<String, dynamic> map) {
    return GetClusterNetworkPolicy(
      enabled: map['enabled'] as bool,
      provider: map['provider'] as String,
    );
  }
}
