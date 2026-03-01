// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_backend_address_pool_reference_response.dart';
import 'load_balancer_nat_rule_reference_response.dart';
import 'public_ip_reference_response.dart';
import 'subnet_reference_response.dart';

/// Defines NIC IP configuration properties.
class NicIpConfigurationResourceSettingsResponse {
  /// Gets or sets the references of the load balancer backend address pools.
  final List<LoadBalancerBackendAddressPoolReferenceResponse>? loadBalancerBackendAddressPools;
  /// Gets or sets the references of the load balancer NAT rules.
  final List<LoadBalancerNatRuleReferenceResponse>? loadBalancerNatRules;
  /// Gets or sets the IP configuration name.
  final String? name;
  /// Gets or sets a value indicating whether this IP configuration is the primary.
  final bool? primary;
  /// Gets or sets the private IP address of the network interface IP Configuration.
  final String? privateIpAddress;
  /// Gets or sets the private IP address allocation method.
  final String? privateIpAllocationMethod;
  /// Defines reference to a public IP.
  final PublicIpReferenceResponse? publicIp;
  /// Defines reference to subnet.
  final SubnetReferenceResponse? subnet;

  /// Creates a new [NicIpConfigurationResourceSettingsResponse].
  /// [loadBalancerBackendAddressPools] Gets or sets the references of the load balancer backend address pools.
  /// [loadBalancerNatRules] Gets or sets the references of the load balancer NAT rules.
  /// [name] Gets or sets the IP configuration name.
  /// [primary] Gets or sets a value indicating whether this IP configuration is the primary.
  /// [privateIpAddress] Gets or sets the private IP address of the network interface IP Configuration.
  /// [privateIpAllocationMethod] Gets or sets the private IP address allocation method.
  /// [publicIp] Defines reference to a public IP.
  /// [subnet] Defines reference to subnet.
  NicIpConfigurationResourceSettingsResponse({
    this.loadBalancerBackendAddressPools,
    this.loadBalancerNatRules,
    this.name,
    this.primary,
    this.privateIpAddress,
    this.privateIpAllocationMethod,
    this.publicIp,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerBackendAddressPools': ?loadBalancerBackendAddressPools == null ? null : pulumi.Input.encodeList<LoadBalancerBackendAddressPoolReferenceResponse, Map<String, dynamic>>(loadBalancerBackendAddressPools!, (value) => value.toMap()),
      'loadBalancerNatRules': ?loadBalancerNatRules == null ? null : pulumi.Input.encodeList<LoadBalancerNatRuleReferenceResponse, Map<String, dynamic>>(loadBalancerNatRules!, (value) => value.toMap()),
      'name': ?name,
      'primary': ?primary,
      'privateIpAddress': ?privateIpAddress,
      'privateIpAllocationMethod': ?privateIpAllocationMethod,
      'publicIp': ?publicIp == null ? null : publicIp!.toMap(),
      'subnet': ?subnet == null ? null : subnet!.toMap(),
    };
  }

  factory NicIpConfigurationResourceSettingsResponse.fromMap(Map<String, dynamic> map) {
    return NicIpConfigurationResourceSettingsResponse(
      loadBalancerBackendAddressPools: map['loadBalancerBackendAddressPools'] == null ? null : pulumi.Input.decodeList<LoadBalancerBackendAddressPoolReferenceResponse>(map['loadBalancerBackendAddressPools'], (value) => LoadBalancerBackendAddressPoolReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerNatRules: map['loadBalancerNatRules'] == null ? null : pulumi.Input.decodeList<LoadBalancerNatRuleReferenceResponse>(map['loadBalancerNatRules'], (value) => LoadBalancerNatRuleReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      primary: map['primary'] == null ? null : map['primary'] as bool,
      privateIpAddress: map['privateIpAddress'] == null ? null : map['privateIpAddress'] as String,
      privateIpAllocationMethod: map['privateIpAllocationMethod'] == null ? null : map['privateIpAllocationMethod'] as String,
      publicIp: map['publicIp'] == null ? null : PublicIpReferenceResponse.fromMap((map['publicIp'] as Map).cast<String, dynamic>()),
      subnet: map['subnet'] == null ? null : SubnetReferenceResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
    );
  }
}

