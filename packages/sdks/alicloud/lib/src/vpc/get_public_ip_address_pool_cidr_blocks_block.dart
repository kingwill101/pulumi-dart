// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPublicIpAddressPoolCidrBlocksBlock {
  /// The CIDR block.
  final pulumi.Input<String> cidrBlock;
  /// The time when the CIDR block was created. The time is displayed in YYYY-MM-DDThh:mm:ssZ format.
  final pulumi.Input<String> createTime;
  /// The ID of the Public Ip Address Pool Cidr Block.
  final pulumi.Input<String> id;
  /// The ID of the Vpc Public IP address pool.
  final pulumi.Input<String> publicIpAddressPoolId;
  /// The status of the CIDR block in the Vpc Public IP address pool. Valid values: `Created`, `Modifying`, `Deleting`.
  final pulumi.Input<String> status;
  /// The number of occupied IP addresses in the CIDR block.
  final pulumi.Input<int> totalIpNum;
  /// The total number of available IP addresses in the CIDR block.
  final pulumi.Input<int> usedIpNum;

  /// Creates a new [GetPublicIpAddressPoolCidrBlocksBlock].
  /// [cidrBlock] The CIDR block.
  /// [createTime] The time when the CIDR block was created. The time is displayed in YYYY-MM-DDThh:mm:ssZ format.
  /// [id] The ID of the Public Ip Address Pool Cidr Block.
  /// [publicIpAddressPoolId] The ID of the Vpc Public IP address pool.
  /// [status] The status of the CIDR block in the Vpc Public IP address pool. Valid values: `Created`, `Modifying`, `Deleting`.
  /// [totalIpNum] The number of occupied IP addresses in the CIDR block.
  /// [usedIpNum] The total number of available IP addresses in the CIDR block.
  GetPublicIpAddressPoolCidrBlocksBlock({
    required this.cidrBlock,
    required this.createTime,
    required this.id,
    required this.publicIpAddressPoolId,
    required this.status,
    required this.totalIpNum,
    required this.usedIpNum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'createTime': createTime,
      'id': id,
      'publicIpAddressPoolId': publicIpAddressPoolId,
      'status': status,
      'totalIpNum': totalIpNum,
      'usedIpNum': usedIpNum,
    };
  }

  factory GetPublicIpAddressPoolCidrBlocksBlock.fromMap(Map<String, dynamic> map) {
    return GetPublicIpAddressPoolCidrBlocksBlock(
      cidrBlock: (map['cidrBlock'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      id: (map['id'] as String).input(),
      publicIpAddressPoolId: (map['publicIpAddressPoolId'] as String).input(),
      status: (map['status'] as String).input(),
      totalIpNum: (map['totalIpNum'] as int).input(),
      usedIpNum: (map['usedIpNum'] as int).input(),
    );
  }
}

