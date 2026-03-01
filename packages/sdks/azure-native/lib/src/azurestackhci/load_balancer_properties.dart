// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_address_pool.dart';
import 'frontend_ipconfiguration.dart';
import 'load_balancer_rule.dart';
import 'probe.dart';

/// Load Balancer resource properties
class LoadBalancerProperties {
  /// backendAddressPools for the loadbalancer
  final List<BackendAddressPool>? backendAddressPools;
  /// Frontend IPs for the loadbalancer.
  final List<FrontendIPConfiguration> frontendIPConfigurations;
  /// load balancer rules
  final List<LoadBalancerRule>? loadBalancingRules;
  /// load balancer health probes
  final List<Probe>? probes;

  /// Creates a new [LoadBalancerProperties].
  /// [backendAddressPools] backendAddressPools for the loadbalancer
  /// [frontendIPConfigurations] Frontend IPs for the loadbalancer.
  /// [loadBalancingRules] load balancer rules
  /// [probes] load balancer health probes
  LoadBalancerProperties({
    this.backendAddressPools,
    required this.frontendIPConfigurations,
    this.loadBalancingRules,
    this.probes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPools': ?backendAddressPools == null ? null : pulumi.Input.encodeList<BackendAddressPool, Map<String, dynamic>>(backendAddressPools!, (value) => value.toMap()),
      'frontendIPConfigurations': pulumi.Input.encodeList<FrontendIPConfiguration, Map<String, dynamic>>(frontendIPConfigurations, (value) => value.toMap()),
      'loadBalancingRules': ?loadBalancingRules == null ? null : pulumi.Input.encodeList<LoadBalancerRule, Map<String, dynamic>>(loadBalancingRules!, (value) => value.toMap()),
      'probes': ?probes == null ? null : pulumi.Input.encodeList<Probe, Map<String, dynamic>>(probes!, (value) => value.toMap()),
    };
  }

  factory LoadBalancerProperties.fromMap(Map<String, dynamic> map) {
    return LoadBalancerProperties(
      backendAddressPools: map['backendAddressPools'] == null ? null : pulumi.Input.decodeList<BackendAddressPool>(map['backendAddressPools'], (value) => BackendAddressPool.fromMap((value as Map).cast<String, dynamic>())),
      frontendIPConfigurations: pulumi.Input.decodeList<FrontendIPConfiguration>(map['frontendIPConfigurations'], (value) => FrontendIPConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancingRules: map['loadBalancingRules'] == null ? null : pulumi.Input.decodeList<LoadBalancerRule>(map['loadBalancingRules'], (value) => LoadBalancerRule.fromMap((value as Map).cast<String, dynamic>())),
      probes: map['probes'] == null ? null : pulumi.Input.decodeList<Probe>(map['probes'], (value) => Probe.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

