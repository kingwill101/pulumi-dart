// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpcEndpointSubnetConfiguration {
  /// The IPv4 address to assign to the endpoint network interface in the subnet. You must provide an IPv4 address if the VPC endpoint supports IPv4.
  final pulumi.Input<String>? ipv4;
  /// The IPv6 address to assign to the endpoint network interface in the subnet. You must provide an IPv6 address if the VPC endpoint supports IPv6.
  final pulumi.Input<String>? ipv6;
  /// The ID of the subnet. Must have a corresponding subnet in the `subnet_ids` argument.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [VpcEndpointSubnetConfiguration].
  /// [ipv4] The IPv4 address to assign to the endpoint network interface in the subnet. You must provide an IPv4 address if the VPC endpoint supports IPv4.
  /// [ipv6] The IPv6 address to assign to the endpoint network interface in the subnet. You must provide an IPv6 address if the VPC endpoint supports IPv6.
  /// [subnetId] The ID of the subnet. Must have a corresponding subnet in the `subnet_ids` argument.
  const VpcEndpointSubnetConfiguration({
    this.ipv4,
    this.ipv6,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4': ?ipv4,
      'ipv6': ?ipv6,
      'subnetId': ?subnetId,
    };
  }

  factory VpcEndpointSubnetConfiguration.fromMap(Map<String, dynamic> map) {
    return VpcEndpointSubnetConfiguration(
      ipv4: (() { final guardedValue = map['ipv4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6: (() { final guardedValue = map['ipv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

