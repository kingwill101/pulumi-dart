// ignore_for_file: unused_element, unnecessary_cast

import 'logical_network_arm_reference.dart';

/// InterfaceIPConfigurationPropertiesFormat properties of IP configuration.
class IPConfigurationProperties {
  /// PrivateIPAddress - Private IP address of the IP configuration.
  final String? privateIPAddress;
  /// Subnet - Name of Subnet bound to the IP configuration.
  final LogicalNetworkArmReference? subnet;

  /// Creates a new [IPConfigurationProperties].
  /// [privateIPAddress] PrivateIPAddress - Private IP address of the IP configuration.
  /// [subnet] Subnet - Name of Subnet bound to the IP configuration.
  IPConfigurationProperties({
    this.privateIPAddress,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateIPAddress': ?privateIPAddress,
      'subnet': ?subnet == null ? null : subnet!.toMap(),
    };
  }

  factory IPConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return IPConfigurationProperties(
      privateIPAddress: map['privateIPAddress'] == null ? null : map['privateIPAddress'] as String,
      subnet: map['subnet'] == null ? null : LogicalNetworkArmReference.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
    );
  }
}

