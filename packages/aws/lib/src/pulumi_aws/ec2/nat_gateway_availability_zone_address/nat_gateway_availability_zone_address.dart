// ignore_for_file: unused_element, unnecessary_cast

class NatGatewayAvailabilityZoneAddress {
  /// List of allocation IDs of the Elastic IP addresses (EIPs) to be used for handling outbound NAT traffic in this specific Availability Zone.
  final List<String>? allocationIds;

  /// Availability Zone (e.g. `us-west-2a`) where this specific NAT gateway configuration will be active. Exactly one of <span pulumi-lang-nodejs="`availabilityZone`" pulumi-lang-dotnet="`AvailabilityZone`" pulumi-lang-go="`availabilityZone`" pulumi-lang-python="`availability_zone`" pulumi-lang-yaml="`availabilityZone`" pulumi-lang-java="`availabilityZone`">`availability_zone`</span> or <span pulumi-lang-nodejs="`availabilityZoneId`" pulumi-lang-dotnet="`AvailabilityZoneId`" pulumi-lang-go="`availabilityZoneId`" pulumi-lang-python="`availability_zone_id`" pulumi-lang-yaml="`availabilityZoneId`" pulumi-lang-java="`availabilityZoneId`">`availability_zone_id`</span> must be specified.
  final String? availabilityZone;

  /// Availability Zone ID (e.g. `usw2-az2`) where this specific NAT gateway configuration will be active. Exactly one of <span pulumi-lang-nodejs="`availabilityZone`" pulumi-lang-dotnet="`AvailabilityZone`" pulumi-lang-go="`availabilityZone`" pulumi-lang-python="`availability_zone`" pulumi-lang-yaml="`availabilityZone`" pulumi-lang-java="`availabilityZone`">`availability_zone`</span> or <span pulumi-lang-nodejs="`availabilityZoneId`" pulumi-lang-dotnet="`AvailabilityZoneId`" pulumi-lang-go="`availabilityZoneId`" pulumi-lang-python="`availability_zone_id`" pulumi-lang-yaml="`availabilityZoneId`" pulumi-lang-java="`availabilityZoneId`">`availability_zone_id`</span> must be specified.
  final String? availabilityZoneId;

  NatGatewayAvailabilityZoneAddress({
    this.allocationIds,
    this.availabilityZone,
    this.availabilityZoneId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allocationIdsValue = allocationIds;
    if (allocationIdsValue != null) {
      map['allocationIds'] = allocationIdsValue;
    }
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    final availabilityZoneIdValue = availabilityZoneId;
    if (availabilityZoneIdValue != null) {
      map['availabilityZoneId'] = availabilityZoneIdValue;
    }
    return map;
  }

  factory NatGatewayAvailabilityZoneAddress.fromMap(Map<String, dynamic> map) {
    return NatGatewayAvailabilityZoneAddress(
      allocationIds: map['allocationIds'] == null
          ? null
          : (map['allocationIds'] as List).cast<String>(),
      availabilityZone: map['availabilityZone'] == null
          ? null
          : map['availabilityZone'] as String,
      availabilityZoneId: map['availabilityZoneId'] == null
          ? null
          : map['availabilityZoneId'] as String,
    );
  }
}
