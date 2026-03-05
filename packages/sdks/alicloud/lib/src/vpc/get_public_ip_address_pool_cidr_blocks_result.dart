// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_public_ip_address_pool_cidr_blocks_block.dart';

/// Result data returned by getPublicIpAddressPoolCidrBlocks.
class GetPublicIpAddressPoolCidrBlocksResult {
  /// A list of Vpc Public Ip Address Pool Cidr Blocks. Each element contains the following attributes:
  final List<GetPublicIpAddressPoolCidrBlocksBlock> blocks;
  /// The CIDR block.
  final String? cidrBlock;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  /// The ID of the Vpc Public IP address pool.
  final String publicIpAddressPoolId;
  /// The status of the CIDR block in the Vpc Public IP address pool.
  final String? status;

  /// Creates a new [GetPublicIpAddressPoolCidrBlocksResult].
  /// [blocks] A list of Vpc Public Ip Address Pool Cidr Blocks. Each element contains the following attributes:
  /// [cidrBlock] The CIDR block.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [publicIpAddressPoolId] The ID of the Vpc Public IP address pool.
  /// [status] The status of the CIDR block in the Vpc Public IP address pool.
  GetPublicIpAddressPoolCidrBlocksResult({
    required this.blocks,
    this.cidrBlock,
    required this.id,
    required this.ids,
    this.outputFile,
    required this.publicIpAddressPoolId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blocks': pulumi.Input.encodeList<GetPublicIpAddressPoolCidrBlocksBlock, Map<String, dynamic>>(blocks, (value) => value.toMap()),
      'cidrBlock': ?cidrBlock,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'publicIpAddressPoolId': publicIpAddressPoolId,
      'status': ?status,
    };
  }

  factory GetPublicIpAddressPoolCidrBlocksResult.fromMap(Map<String, dynamic> map) {
    return GetPublicIpAddressPoolCidrBlocksResult(
      blocks: pulumi.Input.decodeList<GetPublicIpAddressPoolCidrBlocksBlock>(map['blocks']!, (value) => GetPublicIpAddressPoolCidrBlocksBlock.fromMap((value as Map).cast<String, dynamic>())),
      cidrBlock: (() { final guardedValue = map['cidrBlock']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicIpAddressPoolId: map['publicIpAddressPoolId'] as String,
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

