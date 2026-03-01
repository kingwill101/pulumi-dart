// ignore_for_file: unused_element, unnecessary_cast


class GetPublicIpAddressPoolCidrBlocksBlock {
  /// The CIDR block.
  final String cidrBlock;
  /// The time when the CIDR block was created. The time is displayed in YYYY-MM-DDThh:mm:ssZ format.
  final String createTime;
  /// The ID of the Public Ip Address Pool Cidr Block.
  final String id;
  /// The ID of the Vpc Public IP address pool.
  final String publicIpAddressPoolId;
  /// The status of the CIDR block in the Vpc Public IP address pool. Valid values: `Created`, `Modifying`, `Deleting`.
  final String status;
  /// The number of occupied IP addresses in the CIDR block.
  final int totalIpNum;
  /// The total number of available IP addresses in the CIDR block.
  final int usedIpNum;

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
      cidrBlock: map['cidrBlock'] as String,
      createTime: map['createTime'] as String,
      id: map['id'] as String,
      publicIpAddressPoolId: map['publicIpAddressPoolId'] as String,
      status: map['status'] as String,
      totalIpNum: map['totalIpNum'] as int,
      usedIpNum: map['usedIpNum'] as int,
    );
  }
}

