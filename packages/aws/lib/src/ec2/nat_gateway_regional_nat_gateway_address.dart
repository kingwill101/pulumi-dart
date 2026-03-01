// ignore_for_file: unused_element, unnecessary_cast

class NatGatewayRegionalNatGatewayAddress {
  /// The Allocation ID of the Elastic IP address for the NAT Gateway. Required when `connectivity_type` is set to `public` and `availability_mode` is set to `zonal`. When `availability_mode` is set to `regional`, this must not be set; instead, use the `availability_zone_address` block to specify EIPs for each AZ.
  final String? allocationId;

  /// Association ID of the Elastic IP address.
  final String? associationId;

  /// Availability Zone where this specific NAT gateway configuration is active.
  final String? availabilityZone;

  /// Availability Zone ID where this specific NAT gateway configuration is active
  final String? availabilityZoneId;

  /// ID of the network interface.
  final String? networkInterfaceId;

  /// Public IP address.
  final String? publicIp;

  /// Status of the NAT gateway address.
  final String? status;

  /// Creates a new [NatGatewayRegionalNatGatewayAddress].
  /// [allocationId] The Allocation ID of the Elastic IP address for the NAT Gateway. Required when `connectivity_type` is set to `public` and `availability_mode` is set to `zonal`. When `availability_mode` is set to `regional`, this must not be set; instead, use the `availability_zone_address` block to specify EIPs for each AZ.
  /// [associationId] Association ID of the Elastic IP address.
  /// [availabilityZone] Availability Zone where this specific NAT gateway configuration is active.
  /// [availabilityZoneId] Availability Zone ID where this specific NAT gateway configuration is active
  /// [networkInterfaceId] ID of the network interface.
  /// [publicIp] Public IP address.
  /// [status] Status of the NAT gateway address.
  NatGatewayRegionalNatGatewayAddress({
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

  factory NatGatewayRegionalNatGatewayAddress.fromMap(
    Map<String, dynamic> map,
  ) {
    return NatGatewayRegionalNatGatewayAddress(
      allocationId: map['allocationId'] == null
          ? null
          : map['allocationId'] as String,
      associationId: map['associationId'] == null
          ? null
          : map['associationId'] as String,
      availabilityZone: map['availabilityZone'] == null
          ? null
          : map['availabilityZone'] as String,
      availabilityZoneId: map['availabilityZoneId'] == null
          ? null
          : map['availabilityZoneId'] as String,
      networkInterfaceId: map['networkInterfaceId'] == null
          ? null
          : map['networkInterfaceId'] as String,
      publicIp: map['publicIp'] == null ? null : map['publicIp'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
