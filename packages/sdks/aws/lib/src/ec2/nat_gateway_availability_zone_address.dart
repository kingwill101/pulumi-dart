// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NatGatewayAvailabilityZoneAddress {
  /// List of allocation IDs of the Elastic IP addresses (EIPs) to be used for handling outbound NAT traffic in this specific Availability Zone.
  final pulumi.Input<List<String>>? allocationIds;
  /// Availability Zone (e.g. `us-west-2a`) where this specific NAT gateway configuration will be active. Exactly one of `availability_zone` or `availability_zone_id` must be specified.
  final pulumi.Input<String>? availabilityZone;
  /// Availability Zone ID (e.g. `usw2-az2`) where this specific NAT gateway configuration will be active. Exactly one of `availability_zone` or `availability_zone_id` must be specified.
  final pulumi.Input<String>? availabilityZoneId;

  /// Creates a new [NatGatewayAvailabilityZoneAddress].
  /// [allocationIds] List of allocation IDs of the Elastic IP addresses (EIPs) to be used for handling outbound NAT traffic in this specific Availability Zone.
  /// [availabilityZone] Availability Zone (e.g. `us-west-2a`) where this specific NAT gateway configuration will be active. Exactly one of `availability_zone` or `availability_zone_id` must be specified.
  /// [availabilityZoneId] Availability Zone ID (e.g. `usw2-az2`) where this specific NAT gateway configuration will be active. Exactly one of `availability_zone` or `availability_zone_id` must be specified.
  NatGatewayAvailabilityZoneAddress({
    this.allocationIds,
    this.availabilityZone,
    this.availabilityZoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationIds': ?allocationIds,
      'availabilityZone': ?availabilityZone,
      'availabilityZoneId': ?availabilityZoneId,
    };
  }

  factory NatGatewayAvailabilityZoneAddress.fromMap(Map<String, dynamic> map) {
    return NatGatewayAvailabilityZoneAddress(
      allocationIds: (() { final guardedValue = map['allocationIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZoneId: (() { final guardedValue = map['availabilityZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

