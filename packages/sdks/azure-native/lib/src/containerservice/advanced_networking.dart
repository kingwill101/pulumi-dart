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
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      observability: (() { final guardedValue = map['observability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdvancedNetworkingObservability.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      security: (() { final guardedValue = map['security']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdvancedNetworkingSecurity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

