// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_networking_observability_response.dart';
import 'advanced_networking_security_response.dart';

/// Advanced Networking profile for enabling observability and security feature suite on a cluster. For more information see aka.ms/aksadvancednetworking.
class AdvancedNetworkingResponse {
  /// Indicates the enablement of Advanced Networking functionalities of observability and security on AKS clusters. When this is set to true, all observability and security features will be set to enabled unless explicitly disabled. If not specified, the default is false.
  final pulumi.Input<bool>? enabled;
  /// Observability profile to enable advanced network metrics and flow logs with historical contexts.
  final pulumi.Input<AdvancedNetworkingObservabilityResponse>? observability;
  /// Security profile to enable security features on cilium based cluster.
  final pulumi.Input<AdvancedNetworkingSecurityResponse>? security;

  /// Creates a new [AdvancedNetworkingResponse].
  /// [enabled] Indicates the enablement of Advanced Networking functionalities of observability and security on AKS clusters. When this is set to true, all observability and security features will be set to enabled unless explicitly disabled. If not specified, the default is false.
  /// [observability] Observability profile to enable advanced network metrics and flow logs with historical contexts.
  /// [security] Security profile to enable security features on cilium based cluster.
  const AdvancedNetworkingResponse({
    this.enabled,
    this.observability,
    this.security,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'observability': ?pulumi.Input.mapOptionalInputValue<AdvancedNetworkingObservabilityResponse, Map<String, dynamic>>(observability, (value) => value.toMap()),
      'security': ?pulumi.Input.mapOptionalInputValue<AdvancedNetworkingSecurityResponse, Map<String, dynamic>>(security, (value) => value.toMap()),
    };
  }

  factory AdvancedNetworkingResponse.fromMap(Map<String, dynamic> map) {
    return AdvancedNetworkingResponse(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      observability: (() { final guardedValue = map['observability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdvancedNetworkingObservabilityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      security: (() { final guardedValue = map['security']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdvancedNetworkingSecurityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
