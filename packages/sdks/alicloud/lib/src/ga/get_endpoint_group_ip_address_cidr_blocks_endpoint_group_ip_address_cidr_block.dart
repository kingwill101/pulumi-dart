// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEndpointGroupIpAddressCidrBlocksEndpointGroupIpAddressCidrBlock {
  /// The region ID of the endpoint group.
  final pulumi.Input<String> endpointGroupRegion;
  /// The CIDR blocks.
  final pulumi.Input<List<String>> ipAddressCidrBlocks;
  /// The status of the list of endpoint group ip address cidr blocks.
  final pulumi.Input<String> status;

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
      endpointGroupRegion: (map['endpointGroupRegion'] as String).input(),
      ipAddressCidrBlocks: ((map['ipAddressCidrBlocks'] as List).cast<String>()).input(),
      status: (map['status'] as String).input(),
    );
  }
}

