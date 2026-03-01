// ignore_for_file: unused_element, unnecessary_cast


class GetNatGatewayRegionalNatGatewayAddress {
  /// Allocation ID of the Elastic IP address.
  final String allocationId;
  /// Association ID of the Elastic IP address.
  final String associationId;
  /// Availability Zone where this specific NAT gateway configuration is active.
  final String availabilityZone;
  /// Availability Zone ID where this specific NAT gateway configuration is active
  final String availabilityZoneId;
  /// ID of the network interface.
  final String networkInterfaceId;
  /// Public IP address.
  final String publicIp;
  /// Status of the NAT gateway address.
  final String status;

  /// Creates a new [GetNatGatewayRegionalNatGatewayAddress].
  /// [allocationId] Allocation ID of the Elastic IP address.
  /// [associationId] Association ID of the Elastic IP address.
  /// [availabilityZone] Availability Zone where this specific NAT gateway configuration is active.
  /// [availabilityZoneId] Availability Zone ID where this specific NAT gateway configuration is active
  /// [networkInterfaceId] ID of the network interface.
  /// [publicIp] Public IP address.
  /// [status] Status of the NAT gateway address.
  GetNatGatewayRegionalNatGatewayAddress({
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
      allocationId: map['allocationId'] as String,
      associationId: map['associationId'] as String,
      availabilityZone: map['availabilityZone'] as String,
      availabilityZoneId: map['availabilityZoneId'] as String,
      networkInterfaceId: map['networkInterfaceId'] as String,
      publicIp: map['publicIp'] as String,
      status: map['status'] as String,
    );
  }
}

