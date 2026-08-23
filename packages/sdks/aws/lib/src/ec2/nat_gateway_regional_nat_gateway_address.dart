// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NatGatewayRegionalNatGatewayAddress {
  /// The Allocation ID of the Elastic IP address for the NAT Gateway. Required when `connectivityType` is set to `public` and `availabilityMode` is set to `zonal`. When `availabilityMode` is set to `regional`, this must not be set; instead, use the `availabilityZoneAddress` block to specify EIPs for each AZ.
  final pulumi.Input<String>? allocationId;
  /// Association ID of the Elastic IP address.
  final pulumi.Input<String>? associationId;
  /// Availability Zone where this specific NAT gateway configuration is active.
  final pulumi.Input<String>? availabilityZone;
  /// Availability Zone ID where this specific NAT gateway configuration is active
  final pulumi.Input<String>? availabilityZoneId;
  /// ID of the network interface.
  final pulumi.Input<String>? networkInterfaceId;
  /// Public IP address.
  final pulumi.Input<String>? publicIp;
  /// Status of the NAT gateway address.
  final pulumi.Input<String>? status;

  /// Creates a new [NatGatewayRegionalNatGatewayAddress].
  /// [allocationId] The Allocation ID of the Elastic IP address for the NAT Gateway. Required when `connectivityType` is set to `public` and `availabilityMode` is set to `zonal`. When `availabilityMode` is set to `regional`, this must not be set; instead, use the `availabilityZoneAddress` block to specify EIPs for each AZ.
  /// [associationId] Association ID of the Elastic IP address.
  /// [availabilityZone] Availability Zone where this specific NAT gateway configuration is active.
  /// [availabilityZoneId] Availability Zone ID where this specific NAT gateway configuration is active
  /// [networkInterfaceId] ID of the network interface.
  /// [publicIp] Public IP address.
  /// [status] Status of the NAT gateway address.
  const NatGatewayRegionalNatGatewayAddress({
    this.allocationId,
    this.associationId,
    this.availabilityZone,
    this.availabilityZoneId,
    this.networkInterfaceId,
    this.publicIp,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationId': ?allocationId,
      'associationId': ?associationId,
      'availabilityZone': ?availabilityZone,
      'availabilityZoneId': ?availabilityZoneId,
      'networkInterfaceId': ?networkInterfaceId,
      'publicIp': ?publicIp,
      'status': ?status,
    };
  }

  factory NatGatewayRegionalNatGatewayAddress.fromMap(Map<String, dynamic> map) {
    return NatGatewayRegionalNatGatewayAddress(
      allocationId: (() { final guardedValue = map['allocationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      associationId: (() { final guardedValue = map['associationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZoneId: (() { final guardedValue = map['availabilityZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceId: (() { final guardedValue = map['networkInterfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIp: (() { final guardedValue = map['publicIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
