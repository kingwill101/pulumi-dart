// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_address_pool_response.dart';
import 'frontend_ipconfiguration_response.dart';
import 'load_balancer_rule_response.dart';
import 'load_balancer_status_response.dart';
import 'probe_response.dart';

/// Load Balancer resource properties
class LoadBalancerPropertiesResponse {
  /// backendAddressPools for the loadbalancer
  final pulumi.Input<List<BackendAddressPoolResponse>>? backendAddressPools;
  /// Frontend IPs for the loadbalancer.
  final pulumi.Input<List<FrontendIPConfigurationResponse>> frontendIPConfigurations;
  /// load balancer rules
  final pulumi.Input<List<LoadBalancerRuleResponse>>? loadBalancingRules;
  /// load balancer health probes
  final pulumi.Input<List<ProbeResponse>>? probes;
  /// Provisioning state of the Load Balancer
  final pulumi.Input<String> provisioningState;
  /// observed state of the load balancer
  final pulumi.Input<LoadBalancerStatusResponse> status;

  /// Creates a new [LoadBalancerPropertiesResponse].
  /// [backendAddressPools] backendAddressPools for the loadbalancer
  /// [frontendIPConfigurations] Frontend IPs for the loadbalancer.
  /// [loadBalancingRules] load balancer rules
  /// [probes] load balancer health probes
  /// [provisioningState] Provisioning state of the Load Balancer
  /// [status] observed state of the load balancer
  LoadBalancerPropertiesResponse({
    this.backendAddressPools,
    required this.frontendIPConfigurations,
    this.loadBalancingRules,
    this.probes,
    required this.provisioningState,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPools': ?pulumi.Input.mapOptionalInputValue<List<BackendAddressPoolResponse>, List<Map<String, dynamic>>>(backendAddressPools, (value) => pulumi.Input.encodeList<BackendAddressPoolResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'frontendIPConfigurations': pulumi.Input.mapInputValue<List<FrontendIPConfigurationResponse>, List<Map<String, dynamic>>>(frontendIPConfigurations, (value) => pulumi.Input.encodeList<FrontendIPConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancingRules': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerRuleResponse>, List<Map<String, dynamic>>>(loadBalancingRules, (value) => pulumi.Input.encodeList<LoadBalancerRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'probes': ?pulumi.Input.mapOptionalInputValue<List<ProbeResponse>, List<Map<String, dynamic>>>(probes, (value) => pulumi.Input.encodeList<ProbeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'status': pulumi.Input.mapInputValue<LoadBalancerStatusResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory LoadBalancerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerPropertiesResponse(
      backendAddressPools: map['backendAddressPools'] == null ? null : (pulumi.Input.decodeList<BackendAddressPoolResponse>(map['backendAddressPools'], (value) => BackendAddressPoolResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      frontendIPConfigurations: (pulumi.Input.decodeList<FrontendIPConfigurationResponse>(map['frontendIPConfigurations'], (value) => FrontendIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      loadBalancingRules: map['loadBalancingRules'] == null ? null : (pulumi.Input.decodeList<LoadBalancerRuleResponse>(map['loadBalancingRules'], (value) => LoadBalancerRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      probes: map['probes'] == null ? null : (pulumi.Input.decodeList<ProbeResponse>(map['probes'], (value) => ProbeResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      status: (LoadBalancerStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

