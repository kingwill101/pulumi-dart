// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointAccessVpcEndpointNetworkInterface {
  /// The Availability Zone.
  final pulumi.Input<String>? availabilityZone;
  /// The network interface identifier.
  final pulumi.Input<String>? networkInterfaceId;
  /// The IPv4 address of the network interface within the subnet.
  final pulumi.Input<String>? privateIpAddress;
  /// The subnet identifier.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [EndpointAccessVpcEndpointNetworkInterface].
  /// [availabilityZone] The Availability Zone.
  /// [networkInterfaceId] The network interface identifier.
  /// [privateIpAddress] The IPv4 address of the network interface within the subnet.
  /// [subnetId] The subnet identifier.
  const EndpointAccessVpcEndpointNetworkInterface({
    this.availabilityZone,
    this.networkInterfaceId,
    this.privateIpAddress,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'networkInterfaceId': ?networkInterfaceId,
      'privateIpAddress': ?privateIpAddress,
      'subnetId': ?subnetId,
    };
  }

  factory EndpointAccessVpcEndpointNetworkInterface.fromMap(Map<String, dynamic> map) {
    return EndpointAccessVpcEndpointNetworkInterface(
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceId: (() { final guardedValue = map['networkInterfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
