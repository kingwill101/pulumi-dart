// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNatGatewayRegionalNatGatewayAddress {
  /// Allocation ID of the Elastic IP address.
  final pulumi.Input<String> allocationId;
  /// Association ID of the Elastic IP address.
  final pulumi.Input<String> associationId;
  /// Availability Zone where this specific NAT gateway configuration is active.
  final pulumi.Input<String> availabilityZone;
  /// Availability Zone ID where this specific NAT gateway configuration is active
  final pulumi.Input<String> availabilityZoneId;
  /// ID of the network interface.
  final pulumi.Input<String> networkInterfaceId;
  /// Public IP address.
  final pulumi.Input<String> publicIp;
  /// Status of the NAT gateway address.
  final pulumi.Input<String> status;

  /// Creates a new [GetNatGatewayRegionalNatGatewayAddress].
  /// [allocationId] Allocation ID of the Elastic IP address.
  /// [associationId] Association ID of the Elastic IP address.
  /// [availabilityZone] Availability Zone where this specific NAT gateway configuration is active.
  /// [availabilityZoneId] Availability Zone ID where this specific NAT gateway configuration is active
  /// [networkInterfaceId] ID of the network interface.
  /// [publicIp] Public IP address.
  /// [status] Status of the NAT gateway address.
  const GetNatGatewayRegionalNatGatewayAddress({
    required this.allocationId,
    required this.associationId,
    required this.availabilityZone,
    required this.availabilityZoneId,
    required this.networkInterfaceId,
    required this.publicIp,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationId': allocationId,
      'associationId': associationId,
      'availabilityZone': availabilityZone,
      'availabilityZoneId': availabilityZoneId,
      'networkInterfaceId': networkInterfaceId,
      'publicIp': publicIp,
      'status': status,
    };
  }

  factory GetNatGatewayRegionalNatGatewayAddress.fromMap(Map<String, dynamic> map) {
    return GetNatGatewayRegionalNatGatewayAddress(
      allocationId: pulumi.Input.fromValue(map['allocationId'] as String),
      associationId: pulumi.Input.fromValue(map['associationId'] as String),
      availabilityZone: pulumi.Input.fromValue(map['availabilityZone'] as String),
      availabilityZoneId: pulumi.Input.fromValue(map['availabilityZoneId'] as String),
      networkInterfaceId: pulumi.Input.fromValue(map['networkInterfaceId'] as String),
      publicIp: pulumi.Input.fromValue(map['publicIp'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
