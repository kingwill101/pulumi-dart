// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_backend_address_pool_reference_response.dart';
import 'load_balancer_frontend_ipconfiguration_reference_response.dart';
import 'load_balancer_probe_reference_response.dart';

/// Properties for LoadBalancerRules
class LoadBalancerRulePropertiesResponse {
  /// arm reference to backend pool being used by ths pool
  final pulumi.Input<LoadBalancerBackendAddressPoolReferenceResponse> backendAddressPool;
  /// backendPort to forward connections
  final pulumi.Input<int> backendPort;
  /// arm reference to frontend IP being used by this LB
  final pulumi.Input<LoadBalancerFrontendIPConfigurationReferenceResponse> frontendIPConfiguration;
  /// Frontend port to accept connections
  final pulumi.Input<int> frontendPort;
  /// Time for which connections are preserved before being torn down.
  final pulumi.Input<int>? idleTimeoutInMinutes;
  /// SessionPersistence: Default (5-tuple), SourceIP(2-tuple), sourceIPProtocol(3-tuple)
  final pulumi.Input<String>? loadDistribution;
  /// Reference for the health probe for this connection
  final pulumi.Input<LoadBalancerProbeReferenceResponse>? probe;
  /// IP Protocol that the rule must load-balance
  final pulumi.Input<String> protocol;

  /// Creates a new [LoadBalancerRulePropertiesResponse].
  /// [backendAddressPool] arm reference to backend pool being used by ths pool
  /// [backendPort] backendPort to forward connections
  /// [frontendIPConfiguration] arm reference to frontend IP being used by this LB
  /// [frontendPort] Frontend port to accept connections
  /// [idleTimeoutInMinutes] Time for which connections are preserved before being torn down.
  /// [loadDistribution] SessionPersistence: Default (5-tuple), SourceIP(2-tuple), sourceIPProtocol(3-tuple)
  /// [probe] Reference for the health probe for this connection
  /// [protocol] IP Protocol that the rule must load-balance
  LoadBalancerRulePropertiesResponse({
    required this.backendAddressPool,
    required this.backendPort,
    required this.frontendIPConfiguration,
    required this.frontendPort,
    this.idleTimeoutInMinutes,
    this.loadDistribution,
    this.probe,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPool': pulumi.Input.mapInputValue<LoadBalancerBackendAddressPoolReferenceResponse, Map<String, dynamic>>(backendAddressPool, (value) => value.toMap()),
      'backendPort': backendPort,
      'frontendIPConfiguration': pulumi.Input.mapInputValue<LoadBalancerFrontendIPConfigurationReferenceResponse, Map<String, dynamic>>(frontendIPConfiguration, (value) => value.toMap()),
      'frontendPort': frontendPort,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'loadDistribution': ?loadDistribution,
      'probe': ?pulumi.Input.mapOptionalInputValue<LoadBalancerProbeReferenceResponse, Map<String, dynamic>>(probe, (value) => value.toMap()),
      'protocol': protocol,
    };
  }

  factory LoadBalancerRulePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerRulePropertiesResponse(
      backendAddressPool: (LoadBalancerBackendAddressPoolReferenceResponse.fromMap((map['backendAddressPool'] as Map).cast<String, dynamic>())).input(),
      backendPort: (map['backendPort'] as int).input(),
      frontendIPConfiguration: (LoadBalancerFrontendIPConfigurationReferenceResponse.fromMap((map['frontendIPConfiguration'] as Map).cast<String, dynamic>())).input(),
      frontendPort: (map['frontendPort'] as int).input(),
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : (map['idleTimeoutInMinutes'] as int).input(),
      loadDistribution: map['loadDistribution'] == null ? null : (map['loadDistribution'] as String).input(),
      probe: map['probe'] == null ? null : (LoadBalancerProbeReferenceResponse.fromMap((map['probe'] as Map).cast<String, dynamic>())).input(),
      protocol: (map['protocol'] as String).input(),
    );
  }
}

