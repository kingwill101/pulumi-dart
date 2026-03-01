// ignore_for_file: unused_element, unnecessary_cast


class GetEndpointGroupIpAddressCidrBlocksEndpointGroupIpAddressCidrBlock {
  /// The region ID of the endpoint group.
  final String endpointGroupRegion;
  /// The CIDR blocks.
  final List<String> ipAddressCidrBlocks;
  /// The status of the list of endpoint group ip address cidr blocks.
  final String status;

  /// Creates a new [GetEndpointGroupIpAddressCidrBlocksEndpointGroupIpAddressCidrBlock].
  /// [endpointGroupRegion] The region ID of the endpoint group.
  /// [ipAddressCidrBlocks] The CIDR blocks.
  /// [status] The status of the list of endpoint group ip address cidr blocks.
  GetEndpointGroupIpAddressCidrBlocksEndpointGroupIpAddressCidrBlock({
    required this.endpointGroupRegion,
    required this.ipAddressCidrBlocks,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointGroupRegion': endpointGroupRegion,
      'ipAddressCidrBlocks': ipAddressCidrBlocks,
      'status': status,
    };
  }

  factory GetEndpointGroupIpAddressCidrBlocksEndpointGroupIpAddressCidrBlock.fromMap(Map<String, dynamic> map) {
    return GetEndpointGroupIpAddressCidrBlocksEndpointGroupIpAddressCidrBlock(
      endpointGroupRegion: map['endpointGroupRegion'] as String,
      ipAddressCidrBlocks: (map['ipAddressCidrBlocks'] as List).cast<String>(),
      status: map['status'] as String,
    );
  }
}

