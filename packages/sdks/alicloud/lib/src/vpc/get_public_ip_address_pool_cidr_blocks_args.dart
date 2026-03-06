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
  const GetPublicIpAddressPoolCidrBlocksArgs({
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
      cidrBlock: (() { final guardedValue = map['cidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpAddressPoolId: pulumi.Input.fromValue(map['publicIpAddressPoolId'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

