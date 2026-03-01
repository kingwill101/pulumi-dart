// ignore_for_file: unused_element, unnecessary_cast

import 'logical_network_arm_reference_response.dart';

/// InterfaceIPConfigurationPropertiesFormat properties of IP configuration.
class IPConfigurationPropertiesResponse {
  /// Gateway for network interface
  final String gateway;
  /// prefixLength for network interface
  final String prefixLength;
  /// PrivateIPAddress - Private IP address of the IP configuration.
  final String? privateIPAddress;
  /// Subnet - Name of Subnet bound to the IP configuration.
  final LogicalNetworkArmReferenceResponse? subnet;

  /// Creates a new [IPConfigurationPropertiesResponse].
  /// [gateway] Gateway for network interface
  /// [prefixLength] prefixLength for network interface
  /// [privateIPAddress] PrivateIPAddress - Private IP address of the IP configuration.
  /// [subnet] Subnet - Name of Subnet bound to the IP configuration.
  IPConfigurationPropertiesResponse({
    required this.gateway,
    required this.prefixLength,
    this.privateIPAddress,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gateway': gateway,
      'prefixLength': prefixLength,
      'privateIPAddress': ?privateIPAddress,
      'subnet': ?subnet == null ? null : subnet!.toMap(),
    };
  }

  factory IPConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IPConfigurationPropertiesResponse(
      gateway: map['gateway'] as String,
      prefixLength: map['prefixLength'] as String,
      privateIPAddress: map['privateIPAddress'] == null ? null : map['privateIPAddress'] as String,
      subnet: map['subnet'] == null ? null : LogicalNetworkArmReferenceResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
    );
  }
}

