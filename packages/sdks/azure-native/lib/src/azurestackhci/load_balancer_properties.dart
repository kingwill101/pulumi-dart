// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_address_pool.dart';
import 'frontend_ipconfiguration.dart';
import 'load_balancer_rule.dart';
import 'probe.dart';

/// Load Balancer resource properties
class LoadBalancerProperties {
  /// backendAddressPools for the loadbalancer
  final pulumi.Input<List<BackendAddressPool>?>? backendAddressPools;
  /// Frontend IPs for the loadbalancer.
  final pulumi.Input<List<FrontendIPConfiguration>> frontendIPConfigurations;
  /// load balancer rules
  final pulumi.Input<List<LoadBalancerRule>?>? loadBalancingRules;
  /// load balancer health probes
  final pulumi.Input<List<Probe>?>? probes;

  /// Creates a new [LoadBalancerProperties].
  /// [backendAddressPools] backendAddressPools for the loadbalancer
  /// [frontendIPConfigurations] Frontend IPs for the loadbalancer.
  /// [loadBalancingRules] load balancer rules
  /// [probes] load balancer health probes
  const LoadBalancerProperties({
    this.backendAddressPools,
    required this.frontendIPConfigurations,
    this.loadBalancingRules,
    this.probes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPools': ?pulumi.Input.mapOptionalInputValue<List<BackendAddressPool>, List<Map<String, dynamic>>>(backendAddressPools, (value) => pulumi.Input.encodeList<BackendAddressPool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'frontendIPConfigurations': pulumi.Input.mapInputValue<List<FrontendIPConfiguration>, List<Map<String, dynamic>>>(frontendIPConfigurations, (value) => pulumi.Input.encodeList<FrontendIPConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancingRules': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerRule>, List<Map<String, dynamic>>>(loadBalancingRules, (value) => pulumi.Input.encodeList<LoadBalancerRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'probes': ?pulumi.Input.mapOptionalInputValue<List<Probe>, List<Map<String, dynamic>>>(probes, (value) => pulumi.Input.encodeList<Probe, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LoadBalancerProperties.fromMap(Map<String, dynamic> map) {
    return LoadBalancerProperties(
      backendAddressPools: (() { final guardedValue = map['backendAddressPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BackendAddressPool>(guardedValue, (value) => BackendAddressPool.fromMap((value as Map).cast<String, dynamic>()))); })(),
      frontendIPConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<FrontendIPConfiguration>(map['frontendIPConfigurations']!, (value) => FrontendIPConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      loadBalancingRules: (() { final guardedValue = map['loadBalancingRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LoadBalancerRule>(guardedValue, (value) => LoadBalancerRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      probes: (() { final guardedValue = map['probes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Probe>(guardedValue, (value) => Probe.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
