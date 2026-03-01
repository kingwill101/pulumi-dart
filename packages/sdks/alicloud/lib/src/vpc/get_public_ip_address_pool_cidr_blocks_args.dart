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
    pulumi.Output<String>? cidrBlock,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    required pulumi.Output<String> publicIpAddressPoolId,
    pulumi.Output<String>? status,
  }) :
      cidrBlock = pulumi.Input.asOptionalInput<String>(cidrBlock),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      publicIpAddressPoolId = pulumi.Input.asInput<String>(publicIpAddressPoolId),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      cidrBlock: map['cidrBlock'] == null ? null : pulumi.Output.create<String>(map['cidrBlock'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      publicIpAddressPoolId: pulumi.Output.create<String>(map['publicIpAddressPoolId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

