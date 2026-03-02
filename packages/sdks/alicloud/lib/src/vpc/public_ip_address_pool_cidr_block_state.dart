// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PublicIpAddressPoolCidrBlock resources.
class PublicIpAddressPoolCidrBlockState {
  /// The CIDR block.
  final pulumi.Input<String>? cidrBlock;
  /// IP address and network segment mask. After you enter the mask, the system automatically allocates the IP address network segment. Value range: **24** to **28**.
  /// > **NOTE:**  **CidrBlock** and **CidrMask** cannot be configured at the same time. Select one of them to configure.
  final pulumi.Input<int>? cidrMask;
  /// The creation time of the resource.
  final pulumi.Input<String>? createTime;
  /// The ID of the VPC Public IP address pool.
  final pulumi.Input<String>? publicIpAddressPoolId;
  /// The status of the VPC Public Ip Address Pool Cidr Block.
  final pulumi.Input<String>? status;

  /// Creates a new [PublicIpAddressPoolCidrBlockState].
  /// [cidrBlock] The CIDR block.
  /// [cidrMask] IP address and network segment mask. After you enter the mask, the system automatically allocates the IP address network segment. Value range: **24** to **28**.
  /// [createTime] The creation time of the resource.
  /// [publicIpAddressPoolId] The ID of the VPC Public IP address pool.
  /// [status] The status of the VPC Public Ip Address Pool Cidr Block.
  PublicIpAddressPoolCidrBlockState({
    this.cidrBlock,
    this.cidrMask,
    this.createTime,
    this.publicIpAddressPoolId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': ?cidrBlock,
      'cidrMask': ?cidrMask,
      'createTime': ?createTime,
      'publicIpAddressPoolId': ?publicIpAddressPoolId,
      'status': ?status,
    };
  }

  factory PublicIpAddressPoolCidrBlockState.fromMap(Map<String, dynamic> map) {
    return PublicIpAddressPoolCidrBlockState(
      cidrBlock: map['cidrBlock'] == null ? null : (map['cidrBlock'] as String).input(),
      cidrMask: map['cidrMask'] == null ? null : (map['cidrMask'] as int).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      publicIpAddressPoolId: map['publicIpAddressPoolId'] == null ? null : (map['publicIpAddressPoolId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

