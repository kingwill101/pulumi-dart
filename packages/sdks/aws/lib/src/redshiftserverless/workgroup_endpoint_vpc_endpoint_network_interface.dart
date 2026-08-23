// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkgroupEndpointVpcEndpointNetworkInterface {
  /// The availability Zone.
  final pulumi.Input<String>? availabilityZone;
  /// The unique identifier of the network interface.
  final pulumi.Input<String>? networkInterfaceId;
  /// The IPv4 address of the network interface within the subnet.
  final pulumi.Input<String>? privateIpAddress;
  /// The unique identifier of the subnet.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [WorkgroupEndpointVpcEndpointNetworkInterface].
  /// [availabilityZone] The availability Zone.
  /// [networkInterfaceId] The unique identifier of the network interface.
  /// [privateIpAddress] The IPv4 address of the network interface within the subnet.
  /// [subnetId] The unique identifier of the subnet.
  const WorkgroupEndpointVpcEndpointNetworkInterface({
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

  factory WorkgroupEndpointVpcEndpointNetworkInterface.fromMap(Map<String, dynamic> map) {
    return WorkgroupEndpointVpcEndpointNetworkInterface(
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceId: (() { final guardedValue = map['networkInterfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
