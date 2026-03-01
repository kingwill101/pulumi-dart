// ignore_for_file: unused_element, unnecessary_cast


class GetPublicIpAddressPoolsPool {
  /// The time when the Vpc Public Ip Address Pool was created. The time is displayed in YYYY-MM-DDThh:mm:ssZ format.
  final String createTime;
  /// The description of the Vpc Public Ip Address Pool.
  final String description;
  /// The ID of the Vpc Public Ip Address Pool.
  final String id;
  /// Indicates whether the Vpc Public Ip Address Pool has idle IP addresses.
  final bool ipAddressRemaining;
  /// The Internet service provider.
  final String isp;
  /// The ID of the Vpc Public Ip Address Pool.
  final String publicIpAddressPoolId;
  /// The name of the Vpc Public Ip Address Pool.
  final String publicIpAddressPoolName;
  /// The region ID of the Vpc Public Ip Address Pool.
  final String regionId;
  /// The status of the Vpc Public Ip Address Pool.
  final String status;
  /// The total number of IP addresses in the Vpc Public Ip Address Pool.
  final int totalIpNum;
  /// The number of occupied IP addresses in the Vpc Public Ip Address Pool.
  final int usedIpNum;
  /// The user type.
  final String userType;

  /// Creates a new [GetPublicIpAddressPoolsPool].
  /// [createTime] The time when the Vpc Public Ip Address Pool was created. The time is displayed in YYYY-MM-DDThh:mm:ssZ format.
  /// [description] The description of the Vpc Public Ip Address Pool.
  /// [id] The ID of the Vpc Public Ip Address Pool.
  /// [ipAddressRemaining] Indicates whether the Vpc Public Ip Address Pool has idle IP addresses.
  /// [isp] The Internet service provider.
  /// [publicIpAddressPoolId] The ID of the Vpc Public Ip Address Pool.
  /// [publicIpAddressPoolName] The name of the Vpc Public Ip Address Pool.
  /// [regionId] The region ID of the Vpc Public Ip Address Pool.
  /// [status] The status of the Vpc Public Ip Address Pool.
  /// [totalIpNum] The total number of IP addresses in the Vpc Public Ip Address Pool.
  /// [usedIpNum] The number of occupied IP addresses in the Vpc Public Ip Address Pool.
  /// [userType] The user type.
  GetPublicIpAddressPoolsPool({
    required this.createTime,
    required this.description,
    required this.id,
    required this.ipAddressRemaining,
    required this.isp,
    required this.publicIpAddressPoolId,
    required this.publicIpAddressPoolName,
    required this.regionId,
    required this.status,
    required this.totalIpNum,
    required this.usedIpNum,
    required this.userType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'id': id,
      'ipAddressRemaining': ipAddressRemaining,
      'isp': isp,
      'publicIpAddressPoolId': publicIpAddressPoolId,
      'publicIpAddressPoolName': publicIpAddressPoolName,
      'regionId': regionId,
      'status': status,
      'totalIpNum': totalIpNum,
      'usedIpNum': usedIpNum,
      'userType': userType,
    };
  }

  factory GetPublicIpAddressPoolsPool.fromMap(Map<String, dynamic> map) {
    return GetPublicIpAddressPoolsPool(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      ipAddressRemaining: map['ipAddressRemaining'] as bool,
      isp: map['isp'] as String,
      publicIpAddressPoolId: map['publicIpAddressPoolId'] as String,
      publicIpAddressPoolName: map['publicIpAddressPoolName'] as String,
      regionId: map['regionId'] as String,
      status: map['status'] as String,
      totalIpNum: map['totalIpNum'] as int,
      usedIpNum: map['usedIpNum'] as int,
      userType: map['userType'] as String,
    );
  }
}

