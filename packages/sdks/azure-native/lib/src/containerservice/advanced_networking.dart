// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_networking_observability.dart';
import 'advanced_networking_security.dart';

/// Advanced Networking profile for enabling observability and security feature suite on a cluster. For more information see aka.ms/aksadvancednetworking.
class AdvancedNetworking {
  /// Indicates the enablement of Advanced Networking functionalities of observability and security on AKS clusters. When this is set to true, all observability and security features will be set to enabled unless explicitly disabled. If not specified, the default is false.
  final pulumi.Input<bool>? enabled;
  /// Observability profile to enable advanced network metrics and flow logs with historical contexts.
  final pulumi.Input<AdvancedNetworkingObservability>? observability;
  /// Security profile to enable security features on cilium based cluster.
  final pulumi.Input<AdvancedNetworkingSecurity>? security;

  /// Creates a new [AdvancedNetworking].
  /// [enabled] Indicates the enablement of Advanced Networking functionalities of observability and security on AKS clusters. When this is set to true, all observability and security features will be set to enabled unless explicitly disabled. If not specified, the default is false.
  /// [observability] Observability profile to enable advanced network metrics and flow logs with historical contexts.
  /// [security] Security profile to enable security features on cilium based cluster.
  AdvancedNetworking({
    this.enabled,
    this.observability,
    this.security,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'observability': ?pulumi.Input.mapOptionalInputValue<AdvancedNetworkingObservability, Map<String, dynamic>>(observability, (value) => value.toMap()),
      'security': ?pulumi.Input.mapOptionalInputValue<AdvancedNetworkingSecurity, Map<String, dynamic>>(security, (value) => value.toMap()),
    };
  }

  factory AdvancedNetworking.fromMap(Map<String, dynamic> map) {
    return AdvancedNetworking(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      observability: map['observability'] == null ? null : (AdvancedNetworkingObservability.fromMap((map['observability']! as Map).cast<String, dynamic>())).input(),
      security: map['security'] == null ? null : (AdvancedNetworkingSecurity.fromMap((map['security']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

