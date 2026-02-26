// ignore_for_file: unused_element, unnecessary_cast

class NatGatewayRegionalNatGatewayAddress {
  /// The Allocation ID of the Elastic IP address for the NAT Gateway. Required when <span pulumi-lang-nodejs="`connectivityType`" pulumi-lang-dotnet="`ConnectivityType`" pulumi-lang-go="`connectivityType`" pulumi-lang-python="`connectivity_type`" pulumi-lang-yaml="`connectivityType`" pulumi-lang-java="`connectivityType`">`connectivity_type`</span> is set to <span pulumi-lang-nodejs="`public`" pulumi-lang-dotnet="`Public`" pulumi-lang-go="`public`" pulumi-lang-python="`public`" pulumi-lang-yaml="`public`" pulumi-lang-java="`public`">`public`</span> and <span pulumi-lang-nodejs="`availabilityMode`" pulumi-lang-dotnet="`AvailabilityMode`" pulumi-lang-go="`availabilityMode`" pulumi-lang-python="`availability_mode`" pulumi-lang-yaml="`availabilityMode`" pulumi-lang-java="`availabilityMode`">`availability_mode`</span> is set to <span pulumi-lang-nodejs="`zonal`" pulumi-lang-dotnet="`Zonal`" pulumi-lang-go="`zonal`" pulumi-lang-python="`zonal`" pulumi-lang-yaml="`zonal`" pulumi-lang-java="`zonal`">`zonal`</span>. When <span pulumi-lang-nodejs="`availabilityMode`" pulumi-lang-dotnet="`AvailabilityMode`" pulumi-lang-go="`availabilityMode`" pulumi-lang-python="`availability_mode`" pulumi-lang-yaml="`availabilityMode`" pulumi-lang-java="`availabilityMode`">`availability_mode`</span> is set to <span pulumi-lang-nodejs="`regional`" pulumi-lang-dotnet="`Regional`" pulumi-lang-go="`regional`" pulumi-lang-python="`regional`" pulumi-lang-yaml="`regional`" pulumi-lang-java="`regional`">`regional`</span>, this must not be set; instead, use the <span pulumi-lang-nodejs="`availabilityZoneAddress`" pulumi-lang-dotnet="`AvailabilityZoneAddress`" pulumi-lang-go="`availabilityZoneAddress`" pulumi-lang-python="`availability_zone_address`" pulumi-lang-yaml="`availabilityZoneAddress`" pulumi-lang-java="`availabilityZoneAddress`">`availability_zone_address`</span> block to specify EIPs for each AZ.
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
    final map = <String, dynamic>{};
    final allocationIdValue = allocationId;
    if (allocationIdValue != null) {
      map['allocationId'] = allocationIdValue;
    }
    final associationIdValue = associationId;
    if (associationIdValue != null) {
      map['associationId'] = associationIdValue;
    }
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    final availabilityZoneIdValue = availabilityZoneId;
    if (availabilityZoneIdValue != null) {
      map['availabilityZoneId'] = availabilityZoneIdValue;
    }
    final networkInterfaceIdValue = networkInterfaceId;
    if (networkInterfaceIdValue != null) {
      map['networkInterfaceId'] = networkInterfaceIdValue;
    }
    final publicIpValue = publicIp;
    if (publicIpValue != null) {
      map['publicIp'] = publicIpValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory NatGatewayRegionalNatGatewayAddress.fromMap(
      Map<String, dynamic> map) {
    return NatGatewayRegionalNatGatewayAddress(
      allocationId:
          map['allocationId'] == null ? null : map['allocationId'] as String,
      associationId:
          map['associationId'] == null ? null : map['associationId'] as String,
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
