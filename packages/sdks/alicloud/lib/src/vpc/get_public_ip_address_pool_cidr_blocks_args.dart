// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_public_ip_address_pool_cidr_blocks_get_public_ip_address_pool_cidr_blocks_args_doc}
/// Arguments for getPublicIpAddressPoolCidrBlocks.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_public_ip_address_pool_cidr_blocks_get_public_ip_address_pool_cidr_blocks_args_doc}
class GetPublicIpAddressPoolCidrBlocksArgs {
  /// The CIDR block.
  final pulumi.Input<String>? cidrBlock;
  /// A list of Vpc Public Ip Address Pool Cidr Block IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the Vpc Public IP address pool.
  final pulumi.Input<String> publicIpAddressPoolId;
  /// The status of the CIDR block in the Vpc Public IP address pool. Valid values: `Created`, `Modifying`, `Deleting`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetPublicIpAddressPoolCidrBlocksArgs].
  /// [cidrBlock] The CIDR block.
  /// [ids] A list of Vpc Public Ip Address Pool Cidr Block IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [publicIpAddressPoolId] The ID of the Vpc Public IP address pool.
  /// [status] The status of the CIDR block in the Vpc Public IP address pool. Valid values: `Created`, `Modifying`, `Deleting`.
  GetPublicIpAddressPoolCidrBlocksArgs({
    this.cidrBlock,
    this.ids,
    this.outputFile,
    required this.publicIpAddressPoolId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': ?cidrBlock,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'publicIpAddressPoolId': publicIpAddressPoolId,
      'status': ?status,
    };
  }

  factory GetPublicIpAddressPoolCidrBlocksArgs.fromMap(Map<String, dynamic> map) {
    return GetPublicIpAddressPoolCidrBlocksArgs(
      cidrBlock: map['cidrBlock'] == null ? null : (map['cidrBlock'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      publicIpAddressPoolId: (map['publicIpAddressPoolId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

