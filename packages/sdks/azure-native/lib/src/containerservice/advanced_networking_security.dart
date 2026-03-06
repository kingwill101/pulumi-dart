// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Security profile to enable security features on cilium based cluster.
class AdvancedNetworkingSecurity {
  /// Enable advanced network policies. This allows users to configure Layer 7 network policies (FQDN, HTTP, Kafka). Policies themselves must be configured via the Cilium Network Policy resources, see https://docs.cilium.io/en/latest/security/policy/index.html. This can be enabled only on cilium-based clusters. If not specified, the default value is FQDN if security.enabled is set to true.
  final pulumi.Input<String>? advancedNetworkPolicies;
  /// This feature allows user to configure network policy based on DNS (FQDN) names. It can be enabled only on cilium based clusters. If not specified, the default is false.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [AdvancedNetworkingSecurity].
  /// [advancedNetworkPolicies] Enable advanced network policies. This allows users to configure Layer 7 network policies (FQDN, HTTP, Kafka). Policies themselves must be configured via the Cilium Network Policy resources, see https://docs.cilium.io/en/latest/security/policy/index.html. This can be enabled only on cilium-based clusters. If not specified, the default value is FQDN if security.enabled is set to true.
  /// [enabled] This feature allows user to configure network policy based on DNS (FQDN) names. It can be enabled only on cilium based clusters. If not specified, the default is false.
  const AdvancedNetworkingSecurity({
    this.advancedNetworkPolicies,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedNetworkPolicies': ?advancedNetworkPolicies,
      'enabled': ?enabled,
    };
  }

  factory AdvancedNetworkingSecurity.fromMap(Map<String, dynamic> map) {
    return AdvancedNetworkingSecurity(
      advancedNetworkPolicies: (() { final guardedValue = map['advancedNetworkPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

