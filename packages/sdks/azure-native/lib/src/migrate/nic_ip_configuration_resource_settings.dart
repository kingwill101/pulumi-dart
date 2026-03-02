// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_backend_address_pool_reference.dart';
import 'load_balancer_nat_rule_reference.dart';
import 'public_ip_reference.dart';
import 'subnet_reference.dart';

/// Defines NIC IP configuration properties.
class NicIpConfigurationResourceSettings {
  /// Gets or sets the references of the load balancer backend address pools.
  final pulumi.Input<List<LoadBalancerBackendAddressPoolReference>>? loadBalancerBackendAddressPools;
  /// Gets or sets the references of the load balancer NAT rules.
  final pulumi.Input<List<LoadBalancerNatRuleReference>>? loadBalancerNatRules;
  /// Gets or sets the IP configuration name.
  final pulumi.Input<String>? name;
  /// Gets or sets a value indicating whether this IP configuration is the primary.
  final pulumi.Input<bool>? primary;
  /// Gets or sets the private IP address of the network interface IP Configuration.
  final pulumi.Input<String>? privateIpAddress;
  /// Gets or sets the private IP address allocation method.
  final pulumi.Input<String>? privateIpAllocationMethod;
  /// Defines reference to a public IP.
  final pulumi.Input<PublicIpReference>? publicIp;
  /// Defines reference to subnet.
  final pulumi.Input<SubnetReference>? subnet;

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
      'loadBalancerBackendAddressPools': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerBackendAddressPoolReference>, List<Map<String, dynamic>>>(loadBalancerBackendAddressPools, (value) => pulumi.Input.encodeList<LoadBalancerBackendAddressPoolReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancerNatRules': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerNatRuleReference>, List<Map<String, dynamic>>>(loadBalancerNatRules, (value) => pulumi.Input.encodeList<LoadBalancerNatRuleReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'primary': ?primary,
      'privateIpAddress': ?privateIpAddress,
      'privateIpAllocationMethod': ?privateIpAllocationMethod,
      'publicIp': ?pulumi.Input.mapOptionalInputValue<PublicIpReference, Map<String, dynamic>>(publicIp, (value) => value.toMap()),
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubnetReference, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory NicIpConfigurationResourceSettings.fromMap(Map<String, dynamic> map) {
    return NicIpConfigurationResourceSettings(
      loadBalancerBackendAddressPools: map['loadBalancerBackendAddressPools'] == null ? null : (pulumi.Input.decodeList<LoadBalancerBackendAddressPoolReference>(map['loadBalancerBackendAddressPools'], (value) => LoadBalancerBackendAddressPoolReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      loadBalancerNatRules: map['loadBalancerNatRules'] == null ? null : (pulumi.Input.decodeList<LoadBalancerNatRuleReference>(map['loadBalancerNatRules'], (value) => LoadBalancerNatRuleReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      primary: map['primary'] == null ? null : (map['primary'] as bool).input(),
      privateIpAddress: map['privateIpAddress'] == null ? null : (map['privateIpAddress'] as String).input(),
      privateIpAllocationMethod: map['privateIpAllocationMethod'] == null ? null : (map['privateIpAllocationMethod'] as String).input(),
      publicIp: map['publicIp'] == null ? null : (PublicIpReference.fromMap((map['publicIp'] as Map).cast<String, dynamic>())).input(),
      subnet: map['subnet'] == null ? null : (SubnetReference.fromMap((map['subnet'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

