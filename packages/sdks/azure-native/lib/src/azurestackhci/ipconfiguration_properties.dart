// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logical_network_arm_reference.dart';

/// InterfaceIPConfigurationPropertiesFormat properties of IP configuration.
class IPConfigurationProperties {
  /// PrivateIPAddress - Private IP address of the IP configuration.
  final pulumi.Input<String>? privateIPAddress;
  /// Subnet - Name of Subnet bound to the IP configuration.
  final pulumi.Input<LogicalNetworkArmReference>? subnet;

  /// Creates a new [IPConfigurationProperties].
  /// [privateIPAddress] PrivateIPAddress - Private IP address of the IP configuration.
  /// [subnet] Subnet - Name of Subnet bound to the IP configuration.
  const IPConfigurationProperties({
    this.privateIPAddress,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateIPAddress': ?privateIPAddress,
      'subnet': ?pulumi.Input.mapOptionalInputValue<LogicalNetworkArmReference, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory IPConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return IPConfigurationProperties(
      privateIPAddress: (() { final guardedValue = map['privateIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogicalNetworkArmReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

