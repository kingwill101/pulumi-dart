// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_group_ip_address_cidr_blocks_endpoint_group_ip_address_cidr_block.dart';

/// Result data returned by getEndpointGroupIpAddressCidrBlocks.
class GetEndpointGroupIpAddressCidrBlocksResult {
  final String? acceleratorId;
  /// A list of Endpoint Group Ip Address Cidr Blocks. Each element contains the following attributes:
  final List<GetEndpointGroupIpAddressCidrBlocksEndpointGroupIpAddressCidrBlock> endpointGroupIpAddressCidrBlocks;
  /// The region ID of the endpoint group.
  final String endpointGroupRegion;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? outputFile;

  /// Creates a new [GetEndpointGroupIpAddressCidrBlocksResult].
  /// [acceleratorId] Optional.
  /// [endpointGroupIpAddressCidrBlocks] A list of Endpoint Group Ip Address Cidr Blocks. Each element contains the following attributes:
  /// [endpointGroupRegion] The region ID of the endpoint group.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [outputFile] Optional.
  const GetEndpointGroupIpAddressCidrBlocksResult({
    this.acceleratorId,
    required this.endpointGroupIpAddressCidrBlocks,
    required this.endpointGroupRegion,
    required this.id,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': ?acceleratorId,
      'endpointGroupIpAddressCidrBlocks': pulumi.Input.encodeList<GetEndpointGroupIpAddressCidrBlocksEndpointGroupIpAddressCidrBlock, Map<String, dynamic>>(endpointGroupIpAddressCidrBlocks, (value) => value.toMap()),
      'endpointGroupRegion': endpointGroupRegion,
      'id': id,
      'outputFile': ?outputFile,
    };
  }

  factory GetEndpointGroupIpAddressCidrBlocksResult.fromMap(Map<String, dynamic> map) {
    return GetEndpointGroupIpAddressCidrBlocksResult(
      acceleratorId: (() { final guardedValue = map['acceleratorId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpointGroupIpAddressCidrBlocks: pulumi.Input.decodeList<GetEndpointGroupIpAddressCidrBlocksEndpointGroupIpAddressCidrBlock>(map['endpointGroupIpAddressCidrBlocks']!, (value) => GetEndpointGroupIpAddressCidrBlocksEndpointGroupIpAddressCidrBlock.fromMap((value as Map).cast<String, dynamic>())),
      endpointGroupRegion: map['endpointGroupRegion'] as String,
      id: map['id'] as String,
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

