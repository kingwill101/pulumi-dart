// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_backend_address_pool_reference_response.dart';
import 'load_balancer_nat_rule_reference_response.dart';
import 'public_ip_reference_response.dart';
import 'subnet_reference_response.dart';

/// Defines NIC IP configuration properties.
class NicIpConfigurationResourceSettingsResponse {
  /// Gets or sets the references of the load balancer backend address pools.
  final pulumi.Input<List<LoadBalancerBackendAddressPoolReferenceResponse>>? loadBalancerBackendAddressPools;
  /// Gets or sets the references of the load balancer NAT rules.
  final pulumi.Input<List<LoadBalancerNatRuleReferenceResponse>>? loadBalancerNatRules;
  /// Gets or sets the IP configuration name.
  final pulumi.Input<String>? name;
  /// Gets or sets a value indicating whether this IP configuration is the primary.
  final pulumi.Input<bool>? primary;
  /// Gets or sets the private IP address of the network interface IP Configuration.
  final pulumi.Input<String>? privateIpAddress;
  /// Gets or sets the private IP address allocation method.
  final pulumi.Input<String>? privateIpAllocationMethod;
  /// Defines reference to a public IP.
  final pulumi.Input<PublicIpReferenceResponse>? publicIp;
  /// Defines reference to subnet.
  final pulumi.Input<SubnetReferenceResponse>? subnet;

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
      'loadBalancerBackendAddressPools': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerBackendAddressPoolReferenceResponse>, List<Map<String, dynamic>>>(loadBalancerBackendAddressPools, (value) => pulumi.Input.encodeList<LoadBalancerBackendAddressPoolReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancerNatRules': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerNatRuleReferenceResponse>, List<Map<String, dynamic>>>(loadBalancerNatRules, (value) => pulumi.Input.encodeList<LoadBalancerNatRuleReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'primary': ?primary,
      'privateIpAddress': ?privateIpAddress,
      'privateIpAllocationMethod': ?privateIpAllocationMethod,
      'publicIp': ?pulumi.Input.mapOptionalInputValue<PublicIpReferenceResponse, Map<String, dynamic>>(publicIp, (value) => value.toMap()),
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubnetReferenceResponse, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory NicIpConfigurationResourceSettingsResponse.fromMap(Map<String, dynamic> map) {
    return NicIpConfigurationResourceSettingsResponse(
      loadBalancerBackendAddressPools: map['loadBalancerBackendAddressPools'] == null ? null : (pulumi.Input.decodeList<LoadBalancerBackendAddressPoolReferenceResponse>(map['loadBalancerBackendAddressPools']!, (value) => LoadBalancerBackendAddressPoolReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      loadBalancerNatRules: map['loadBalancerNatRules'] == null ? null : (pulumi.Input.decodeList<LoadBalancerNatRuleReferenceResponse>(map['loadBalancerNatRules']!, (value) => LoadBalancerNatRuleReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      primary: map['primary'] == null ? null : (map['primary']! as bool).input(),
      privateIpAddress: map['privateIpAddress'] == null ? null : (map['privateIpAddress']! as String).input(),
      privateIpAllocationMethod: map['privateIpAllocationMethod'] == null ? null : (map['privateIpAllocationMethod']! as String).input(),
      publicIp: map['publicIp'] == null ? null : (PublicIpReferenceResponse.fromMap((map['publicIp']! as Map).cast<String, dynamic>())).input(),
      subnet: map['subnet'] == null ? null : (SubnetReferenceResponse.fromMap((map['subnet']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

