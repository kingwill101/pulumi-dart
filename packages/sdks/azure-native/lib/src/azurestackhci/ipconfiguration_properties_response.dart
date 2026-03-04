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
      'subnet':
          ?pulumi.Input.mapOptionalInputValue<
            LogicalNetworkArmReferenceResponse,
            Map<String, dynamic>
          >(subnet, (value) => value.toMap()),
    };
  }

  factory IPConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IPConfigurationPropertiesResponse(
      gateway: pulumi.Input.fromValue(map['gateway'] as String),
      prefixLength: pulumi.Input.fromValue(map['prefixLength'] as String),
      privateIPAddress: (() {
        final guardedValue = map['privateIPAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnet: (() {
        final guardedValue = map['subnet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LogicalNetworkArmReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
