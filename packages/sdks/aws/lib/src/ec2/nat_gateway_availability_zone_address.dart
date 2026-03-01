// ignore_for_file: unused_element, unnecessary_cast


class NatGatewayAvailabilityZoneAddress {
  /// List of allocation IDs of the Elastic IP addresses (EIPs) to be used for handling outbound NAT traffic in this specific Availability Zone.
  final List<String>? allocationIds;
  /// Availability Zone (e.g. `us-west-2a`) where this specific NAT gateway configuration will be active. Exactly one of `availability_zone` or `availability_zone_id` must be specified.
  final String? availabilityZone;
  /// Availability Zone ID (e.g. `usw2-az2`) where this specific NAT gateway configuration will be active. Exactly one of `availability_zone` or `availability_zone_id` must be specified.
  final String? availabilityZoneId;

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
      allocationIds: map['allocationIds'] == null ? null : (map['allocationIds'] as List).cast<String>(),
      availabilityZone: map['availabilityZone'] == null ? null : map['availabilityZone'] as String,
      availabilityZoneId: map['availabilityZoneId'] == null ? null : map['availabilityZoneId'] as String,
    );
  }
}

