// ignore_for_file: unused_element, unnecessary_cast

import 'network_policy_provider_container_v1beta1.dart';

/// Configuration options for the NetworkPolicy feature. https://kubernetes.io/docs/concepts/services-networking/networkpolicies/
class NetworkPolicyContainerV1beta1 {
  /// Whether network policy is enabled on the cluster.
  final bool? enabled;

  /// The selected network policy provider.
  final NetworkPolicyProviderContainerV1beta1? provider;

  NetworkPolicyContainerV1beta1({
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

  factory NetworkPolicyContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyContainerV1beta1(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      provider: map['provider'] == null
          ? null
          : NetworkPolicyProviderContainerV1beta1.fromValue(
              map['provider'] as String),
    );
  }
}
