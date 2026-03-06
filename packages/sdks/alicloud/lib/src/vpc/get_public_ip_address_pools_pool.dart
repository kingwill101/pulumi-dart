// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPublicIpAddressPoolsPool {
  /// The time when the Vpc Public Ip Address Pool was created. The time is displayed in YYYY-MM-DDThh:mm:ssZ format.
  final pulumi.Input<String> createTime;
  /// The description of the Vpc Public Ip Address Pool.
  final pulumi.Input<String> description;
  /// The ID of the Vpc Public Ip Address Pool.
  final pulumi.Input<String> id;
  /// Indicates whether the Vpc Public Ip Address Pool has idle IP addresses.
  final pulumi.Input<bool> ipAddressRemaining;
  /// The Internet service provider.
  final pulumi.Input<String> isp;
  /// The ID of the Vpc Public Ip Address Pool.
  final pulumi.Input<String> publicIpAddressPoolId;
  /// The name of the Vpc Public Ip Address Pool.
  final pulumi.Input<String> publicIpAddressPoolName;
  /// The region ID of the Vpc Public Ip Address Pool.
  final pulumi.Input<String> regionId;
  /// The status of the Vpc Public Ip Address Pool.
  final pulumi.Input<String> status;
  /// The total number of IP addresses in the Vpc Public Ip Address Pool.
  final pulumi.Input<int> totalIpNum;
  /// The number of occupied IP addresses in the Vpc Public Ip Address Pool.
  final pulumi.Input<int> usedIpNum;
  /// The user type.
  final pulumi.Input<String> userType;

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
  const GetPublicIpAddressPoolsPool({
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
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      ipAddressRemaining: pulumi.Input.fromValue(map['ipAddressRemaining'] as bool),
      isp: pulumi.Input.fromValue(map['isp'] as String),
      publicIpAddressPoolId: pulumi.Input.fromValue(map['publicIpAddressPoolId'] as String),
      publicIpAddressPoolName: pulumi.Input.fromValue(map['publicIpAddressPoolName'] as String),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      totalIpNum: pulumi.Input.fromValue(map['totalIpNum'] as int),
      usedIpNum: pulumi.Input.fromValue(map['usedIpNum'] as int),
      userType: pulumi.Input.fromValue(map['userType'] as String),
    );
  }
}

