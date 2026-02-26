// ignore_for_file: unused_element, unnecessary_cast

import 'network_policy_provider2.dart';

/// Configuration options for the NetworkPolicy feature. https://kubernetes.io/docs/concepts/services-networking/networkpolicies/
class NetworkPolicy3 {
  /// Whether network policy is enabled on the cluster.
  final bool? enabled;

  /// The selected network policy provider.
  final NetworkPolicyProvider2? provider;

  NetworkPolicy3({
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

  factory NetworkPolicy3.fromMap(Map<String, dynamic> map) {
    return NetworkPolicy3(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      provider: map['provider'] == null
          ? null
          : NetworkPolicyProvider2.fromValue(map['provider'] as String),
    );
  }
}
