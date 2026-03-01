// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_backend_address_pool_reference.dart';
import 'load_balancer_nat_rule_reference.dart';
import 'public_ip_reference.dart';
import 'subnet_reference.dart';

/// Defines NIC IP configuration properties.
class NicIpConfigurationResourceSettings {
  /// Gets or sets the references of the load balancer backend address pools.
  final List<LoadBalancerBackendAddressPoolReference>? loadBalancerBackendAddressPools;
  /// Gets or sets the references of the load balancer NAT rules.
  final List<LoadBalancerNatRuleReference>? loadBalancerNatRules;
  /// Gets or sets the IP configuration name.
  final String? name;
  /// Gets or sets a value indicating whether this IP configuration is the primary.
  final bool? primary;
  /// Gets or sets the private IP address of the network interface IP Configuration.
  final String? privateIpAddress;
  /// Gets or sets the private IP address allocation method.
  final String? privateIpAllocationMethod;
  /// Defines reference to a public IP.
  final PublicIpReference? publicIp;
  /// Defines reference to subnet.
  final SubnetReference? subnet;

  /// Creates a new [NicIpConfigurationResourceSettings].
  /// [loadBalancerBackendAddressPools] Gets or sets the references of the load balancer backend address pools.
  /// [loadBalancerNatRules] Gets or sets the references of the load balancer NAT rules.
  /// [name] Gets or sets the IP configuration name.
  /// [primary] Gets or sets a value indicating whether this IP configuration is the primary.
  /// [privateIpAddress] Gets or sets the private IP address of the network interface IP Configuration.
  /// [privateIpAllocationMethod] Gets or sets the private IP address allocation method.
  /// [publicIp] Defines reference to a public IP.
  /// [subnet] Defines reference to subnet.
  NicIpConfigurationResourceSettings({
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
      'loadBalancerBackendAddressPools': ?loadBalancerBackendAddressPools == null ? null : pulumi.Input.encodeList<LoadBalancerBackendAddressPoolReference, Map<String, dynamic>>(loadBalancerBackendAddressPools!, (value) => value.toMap()),
      'loadBalancerNatRules': ?loadBalancerNatRules == null ? null : pulumi.Input.encodeList<LoadBalancerNatRuleReference, Map<String, dynamic>>(loadBalancerNatRules!, (value) => value.toMap()),
      'name': ?name,
      'primary': ?primary,
      'privateIpAddress': ?privateIpAddress,
      'privateIpAllocationMethod': ?privateIpAllocationMethod,
      'publicIp': ?publicIp == null ? null : publicIp!.toMap(),
      'subnet': ?subnet == null ? null : subnet!.toMap(),
    };
  }

  factory NicIpConfigurationResourceSettings.fromMap(Map<String, dynamic> map) {
    return NicIpConfigurationResourceSettings(
      loadBalancerBackendAddressPools: map['loadBalancerBackendAddressPools'] == null ? null : pulumi.Input.decodeList<LoadBalancerBackendAddressPoolReference>(map['loadBalancerBackendAddressPools'], (value) => LoadBalancerBackendAddressPoolReference.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerNatRules: map['loadBalancerNatRules'] == null ? null : pulumi.Input.decodeList<LoadBalancerNatRuleReference>(map['loadBalancerNatRules'], (value) => LoadBalancerNatRuleReference.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      primary: map['primary'] == null ? null : map['primary'] as bool,
      privateIpAddress: map['privateIpAddress'] == null ? null : map['privateIpAddress'] as String,
      privateIpAllocationMethod: map['privateIpAllocationMethod'] == null ? null : map['privateIpAllocationMethod'] as String,
      publicIp: map['publicIp'] == null ? null : PublicIpReference.fromMap((map['publicIp'] as Map).cast<String, dynamic>()),
      subnet: map['subnet'] == null ? null : SubnetReference.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
    );
  }
}

