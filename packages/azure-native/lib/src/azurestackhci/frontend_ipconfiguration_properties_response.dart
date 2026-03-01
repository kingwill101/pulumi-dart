// ignore_for_file: unused_element, unnecessary_cast

import 'public_ipaddress_arm_reference_response.dart';
import 'virtual_network_subnet_arm_reference_response.dart';

/// FrontendIP Configuration object for a load balancer.
class FrontendIPConfigurationPropertiesResponse {
  /// Private IP Address that was allocated (dynamic) or is to be allocated (static) from the subnet.
  final String? privateIPAddress;
  /// privateIPAllocationMethod - set to Static for requesting a specific IP
  final String? privateIPAllocationMethod;
  /// Public IP
  final PublicIPAddressArmReferenceResponse? publicIPAddress;
  /// subnet - the subnet from which to allocate the private IP
  final VirtualNetworkSubnetArmReferenceResponse? subnet;

  /// Creates a new [FrontendIPConfigurationPropertiesResponse].
  /// [privateIPAddress] Private IP Address that was allocated (dynamic) or is to be allocated (static) from the subnet.
  /// [privateIPAllocationMethod] privateIPAllocationMethod - set to Static for requesting a specific IP
  /// [publicIPAddress] Public IP
  /// [subnet] subnet - the subnet from which to allocate the private IP
  FrontendIPConfigurationPropertiesResponse({
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

  factory FrontendIPConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return FrontendIPConfigurationPropertiesResponse(
      privateIPAddress: map['privateIPAddress'] == null ? null : map['privateIPAddress'] as String,
      privateIPAllocationMethod: map['privateIPAllocationMethod'] == null ? null : map['privateIPAllocationMethod'] as String,
      publicIPAddress: map['publicIPAddress'] == null ? null : PublicIPAddressArmReferenceResponse.fromMap((map['publicIPAddress'] as Map).cast<String, dynamic>()),
      subnet: map['subnet'] == null ? null : VirtualNetworkSubnetArmReferenceResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
    );
  }
}

