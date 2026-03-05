// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNatGatewayAvailabilityZoneAddress {
  /// List of allocation IDs of the Elastic IP addresses (EIPs) to be used for handling outbound NAT traffic in this specific Availability Zone.
  final pulumi.Input<List<String>> allocationIds;
  /// Availability Zone where this specific NAT gateway configuration is active.
  final pulumi.Input<String> availabilityZone;
  /// Availability Zone ID where this specific NAT gateway configuration is active
  final pulumi.Input<String> availabilityZoneId;

  /// Creates a new [GetNatGatewayAvailabilityZoneAddress].
  /// [allocationIds] List of allocation IDs of the Elastic IP addresses (EIPs) to be used for handling outbound NAT traffic in this specific Availability Zone.
  /// [availabilityZone] Availability Zone where this specific NAT gateway configuration is active.
  /// [availabilityZoneId] Availability Zone ID where this specific NAT gateway configuration is active
  GetNatGatewayAvailabilityZoneAddress({
    required this.allocationIds,
    required this.availabilityZone,
    required this.availabilityZoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationIds': allocationIds,
      'availabilityZone': availabilityZone,
      'availabilityZoneId': availabilityZoneId,
    };
  }

  factory GetNatGatewayAvailabilityZoneAddress.fromMap(Map<String, dynamic> map) {
    return GetNatGatewayAvailabilityZoneAddress(
      allocationIds: pulumi.Input.fromValue((map['allocationIds'] as List).cast<String>()),
      availabilityZone: pulumi.Input.fromValue(map['availabilityZone'] as String),
      availabilityZoneId: pulumi.Input.fromValue(map['availabilityZoneId'] as String),
    );
  }
}

