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
  final List<BackendAddressPoolResponse>? backendAddressPools;
  /// Frontend IPs for the loadbalancer.
  final List<FrontendIPConfigurationResponse> frontendIPConfigurations;
  /// load balancer rules
  final List<LoadBalancerRuleResponse>? loadBalancingRules;
  /// load balancer health probes
  final List<ProbeResponse>? probes;
  /// Provisioning state of the Load Balancer
  final String provisioningState;
  /// observed state of the load balancer
  final LoadBalancerStatusResponse status;

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
      'backendAddressPools': ?backendAddressPools == null ? null : pulumi.Input.encodeList<BackendAddressPoolResponse, Map<String, dynamic>>(backendAddressPools!, (value) => value.toMap()),
      'frontendIPConfigurations': pulumi.Input.encodeList<FrontendIPConfigurationResponse, Map<String, dynamic>>(frontendIPConfigurations, (value) => value.toMap()),
      'loadBalancingRules': ?loadBalancingRules == null ? null : pulumi.Input.encodeList<LoadBalancerRuleResponse, Map<String, dynamic>>(loadBalancingRules!, (value) => value.toMap()),
      'probes': ?probes == null ? null : pulumi.Input.encodeList<ProbeResponse, Map<String, dynamic>>(probes!, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'status': status.toMap(),
    };
  }

  factory LoadBalancerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerPropertiesResponse(
      backendAddressPools: map['backendAddressPools'] == null ? null : pulumi.Input.decodeList<BackendAddressPoolResponse>(map['backendAddressPools'], (value) => BackendAddressPoolResponse.fromMap((value as Map).cast<String, dynamic>())),
      frontendIPConfigurations: pulumi.Input.decodeList<FrontendIPConfigurationResponse>(map['frontendIPConfigurations'], (value) => FrontendIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancingRules: map['loadBalancingRules'] == null ? null : pulumi.Input.decodeList<LoadBalancerRuleResponse>(map['loadBalancingRules'], (value) => LoadBalancerRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      probes: map['probes'] == null ? null : pulumi.Input.decodeList<ProbeResponse>(map['probes'], (value) => ProbeResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      status: LoadBalancerStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

