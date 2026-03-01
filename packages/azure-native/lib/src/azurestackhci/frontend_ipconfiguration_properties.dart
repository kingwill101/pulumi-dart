// ignore_for_file: unused_element, unnecessary_cast

import 'public_ipaddress_arm_reference.dart';
import 'virtual_network_subnet_arm_reference.dart';

/// FrontendIP Configuration object for a load balancer.
class FrontendIPConfigurationProperties {
  /// Private IP Address that was allocated (dynamic) or is to be allocated (static) from the subnet.
  final String? privateIPAddress;
  /// privateIPAllocationMethod - set to Static for requesting a specific IP
  final String? privateIPAllocationMethod;
  /// Public IP
  final PublicIPAddressArmReference? publicIPAddress;
  /// subnet - the subnet from which to allocate the private IP
  final VirtualNetworkSubnetArmReference? subnet;

  /// Creates a new [FrontendIPConfigurationProperties].
  /// [privateIPAddress] Private IP Address that was allocated (dynamic) or is to be allocated (static) from the subnet.
  /// [privateIPAllocationMethod] privateIPAllocationMethod - set to Static for requesting a specific IP
  /// [publicIPAddress] Public IP
  /// [subnet] subnet - the subnet from which to allocate the private IP
  FrontendIPConfigurationProperties({
    this.privateIPAddress,
    this.privateIPAllocationMethod,
    this.publicIPAddress,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateIPAddress': ?privateIPAddress,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'publicIPAddress': ?publicIPAddress == null ? null : publicIPAddress!.toMap(),
      'subnet': ?subnet == null ? null : subnet!.toMap(),
    };
  }

  factory FrontendIPConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return FrontendIPConfigurationProperties(
      privateIPAddress: map['privateIPAddress'] == null ? null : map['privateIPAddress'] as String,
      privateIPAllocationMethod: map['privateIPAllocationMethod'] == null ? null : map['privateIPAllocationMethod'] as String,
      publicIPAddress: map['publicIPAddress'] == null ? null : PublicIPAddressArmReference.fromMap((map['publicIPAddress'] as Map).cast<String, dynamic>()),
      subnet: map['subnet'] == null ? null : VirtualNetworkSubnetArmReference.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
    );
  }
}

