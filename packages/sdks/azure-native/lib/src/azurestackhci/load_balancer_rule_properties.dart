// ignore_for_file: unused_element, unnecessary_cast

import 'load_balancer_backend_address_pool_reference.dart';
import 'load_balancer_frontend_ipconfiguration_reference.dart';
import 'load_balancer_probe_reference.dart';

/// Properties for LoadBalancerRules
class LoadBalancerRuleProperties {
  /// arm reference to backend pool being used by ths pool
  final LoadBalancerBackendAddressPoolReference backendAddressPool;
  /// backendPort to forward connections
  final int backendPort;
  /// arm reference to frontend IP being used by this LB
  final LoadBalancerFrontendIPConfigurationReference frontendIPConfiguration;
  /// Frontend port to accept connections
  final int frontendPort;
  /// Time for which connections are preserved before being torn down.
  final int? idleTimeoutInMinutes;
  /// SessionPersistence: Default (5-tuple), SourceIP(2-tuple), sourceIPProtocol(3-tuple)
  final String? loadDistribution;
  /// Reference for the health probe for this connection
  final LoadBalancerProbeReference? probe;
  /// IP Protocol that the rule must load-balance
  final String protocol;

  /// Creates a new [LoadBalancerRuleProperties].
  /// [backendAddressPool] arm reference to backend pool being used by ths pool
  /// [backendPort] backendPort to forward connections
  /// [frontendIPConfiguration] arm reference to frontend IP being used by this LB
  /// [frontendPort] Frontend port to accept connections
  /// [idleTimeoutInMinutes] Time for which connections are preserved before being torn down.
  /// [loadDistribution] SessionPersistence: Default (5-tuple), SourceIP(2-tuple), sourceIPProtocol(3-tuple)
  /// [probe] Reference for the health probe for this connection
  /// [protocol] IP Protocol that the rule must load-balance
  LoadBalancerRuleProperties({
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
      'backendAddressPool': backendAddressPool.toMap(),
      'backendPort': backendPort,
      'frontendIPConfiguration': frontendIPConfiguration.toMap(),
      'frontendPort': frontendPort,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'loadDistribution': ?loadDistribution,
      'probe': ?probe == null ? null : probe!.toMap(),
      'protocol': protocol,
    };
  }

  factory LoadBalancerRuleProperties.fromMap(Map<String, dynamic> map) {
    return LoadBalancerRuleProperties(
      backendAddressPool: LoadBalancerBackendAddressPoolReference.fromMap((map['backendAddressPool'] as Map).cast<String, dynamic>()),
      backendPort: map['backendPort'] as int,
      frontendIPConfiguration: LoadBalancerFrontendIPConfigurationReference.fromMap((map['frontendIPConfiguration'] as Map).cast<String, dynamic>()),
      frontendPort: map['frontendPort'] as int,
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : map['idleTimeoutInMinutes'] as int,
      loadDistribution: map['loadDistribution'] == null ? null : map['loadDistribution'] as String,
      probe: map['probe'] == null ? null : LoadBalancerProbeReference.fromMap((map['probe'] as Map).cast<String, dynamic>()),
      protocol: map['protocol'] as String,
    );
  }
}

