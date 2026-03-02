// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logical_network_arm_reference_response.dart';

/// InterfaceIPConfigurationPropertiesFormat properties of IP configuration.
class IPConfigurationPropertiesResponse {
  /// Gateway for network interface
  final pulumi.Input<String> gateway;
  /// prefixLength for network interface
  final pulumi.Input<String> prefixLength;
  /// PrivateIPAddress - Private IP address of the IP configuration.
  final pulumi.Input<String>? privateIPAddress;
  /// Subnet - Name of Subnet bound to the IP configuration.
  final pulumi.Input<LogicalNetworkArmReferenceResponse>? subnet;

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
      'subnet': ?pulumi.Input.mapOptionalInputValue<LogicalNetworkArmReferenceResponse, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory IPConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IPConfigurationPropertiesResponse(
      gateway: (map['gateway'] as String).input(),
      prefixLength: (map['prefixLength'] as String).input(),
      privateIPAddress: map['privateIPAddress'] == null ? null : (map['privateIPAddress'] as String).input(),
      subnet: map['subnet'] == null ? null : (LogicalNetworkArmReferenceResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

