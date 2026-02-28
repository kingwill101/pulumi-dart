// ignore_for_file: unused_element, unnecessary_cast

import 'network_policy_provider.dart';

/// Configuration options for the NetworkPolicy feature. https://kubernetes.io/docs/concepts/services-networking/networkpolicies/
class NetworkPolicy {
  /// Whether network policy is enabled on the cluster.
  final bool? enabled;

  /// The selected network policy provider.
  final NetworkPolicyProvider? provider;

  /// Creates a new [NetworkPolicy].
  /// [enabled] Whether network policy is enabled on the cluster.
  /// [provider] The selected network policy provider.
  NetworkPolicy({
    this.enabled,
    this.provider,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final providerValue = provider;
    if (providerValue != null) {
      map['provider'] = providerValue.value;
    }
    return map;
  }

  factory NetworkPolicy.fromMap(Map<String, dynamic> map) {
    return NetworkPolicy(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      provider: map['provider'] == null
          ? null
          : NetworkPolicyProvider.fromValue(map['provider'] as String),
    );
  }
}
