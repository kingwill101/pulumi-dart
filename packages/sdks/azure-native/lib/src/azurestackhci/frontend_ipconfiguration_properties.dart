// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_ipaddress_arm_reference.dart';
import 'virtual_network_subnet_arm_reference.dart';

/// FrontendIP Configuration object for a load balancer.
class FrontendIPConfigurationProperties {
  /// Private IP Address that was allocated (dynamic) or is to be allocated (static) from the subnet.
  final pulumi.Input<String>? privateIPAddress;

  /// privateIPAllocationMethod - set to Static for requesting a specific IP
  final pulumi.Input<String>? privateIPAllocationMethod;

  /// Public IP
  final pulumi.Input<PublicIPAddressArmReference>? publicIPAddress;

  /// subnet - the subnet from which to allocate the private IP
  final pulumi.Input<VirtualNetworkSubnetArmReference>? subnet;

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
      'publicIPAddress':
          ?pulumi.Input.mapOptionalInputValue<
            PublicIPAddressArmReference,
            Map<String, dynamic>
          >(publicIPAddress, (value) => value.toMap()),
      'subnet':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualNetworkSubnetArmReference,
            Map<String, dynamic>
          >(subnet, (value) => value.toMap()),
    };
  }

  factory FrontendIPConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return FrontendIPConfigurationProperties(
      privateIPAddress: (() {
        final guardedValue = map['privateIPAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateIPAllocationMethod: (() {
        final guardedValue = map['privateIPAllocationMethod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicIPAddress: (() {
        final guardedValue = map['publicIPAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PublicIPAddressArmReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      subnet: (() {
        final guardedValue = map['subnet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualNetworkSubnetArmReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
