// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_public_ip_address_pool_cidr_block_public_ip_address_pool_cidr_block_args_doc}
/// The set of arguments for PublicIpAddressPoolCidrBlock.
/// {@endtemplate}
/// {@macro pulumi_vpc_public_ip_address_pool_cidr_block_public_ip_address_pool_cidr_block_args_doc}
class PublicIpAddressPoolCidrBlockArgs {
  /// The CIDR block.
  final pulumi.Input<String>? cidrBlock;
  /// IP address and network segment mask. After you enter the mask, the system automatically allocates the IP address network segment. Value range: **24** to **28**.
  /// > **NOTE:**  **CidrBlock** and **CidrMask** cannot be configured at the same time. Select one of them to configure.
  final pulumi.Input<int>? cidrMask;
  /// The ID of the VPC Public IP address pool.
  final pulumi.Input<String> publicIpAddressPoolId;

  /// Creates a new [PublicIpAddressPoolCidrBlockArgs].
  /// [cidrBlock] The CIDR block.
  /// [cidrMask] IP address and network segment mask. After you enter the mask, the system automatically allocates the IP address network segment. Value range: **24** to **28**.
  /// [publicIpAddressPoolId] The ID of the VPC Public IP address pool.
  PublicIpAddressPoolCidrBlockArgs({
    this.cidrBlock,
    this.cidrMask,
    required this.publicIpAddressPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': ?cidrBlock,
      'cidrMask': ?cidrMask,
      'publicIpAddressPoolId': publicIpAddressPoolId,
    };
  }

  factory PublicIpAddressPoolCidrBlockArgs.fromMap(Map<String, dynamic> map) {
    return PublicIpAddressPoolCidrBlockArgs(
      cidrBlock: map['cidrBlock'] == null ? null : (map['cidrBlock']! as String).input(),
      cidrMask: map['cidrMask'] == null ? null : (map['cidrMask']! as int).input(),
      publicIpAddressPoolId: (map['publicIpAddressPoolId'] as String).input(),
    );
  }
}

