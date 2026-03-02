// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PublicIpAddressPool resources.
class PublicIpAddressPoolState {
  /// The name of the VPC Public IP address pool.
  final pulumi.Input<String>? bizType;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// Description.
  final pulumi.Input<String>? description;
  /// Whether there is a free IP address.
  final pulumi.Input<bool>? ipAddressRemaining;
  /// The Internet service provider. Valid values: `BGP`, `BGP_PRO`, `ChinaTelecom`, `ChinaUnicom`, `ChinaMobile`, `ChinaTelecom_L2`, `ChinaUnicom_L2`, `ChinaMobile_L2`, `BGP_FinanceCloud`. Default Value: `BGP`.
  final pulumi.Input<String>? isp;
  final pulumi.Input<String>? publicIpAddressPoolId;
  /// The name of the VPC Public IP address pool.
  final pulumi.Input<String>? publicIpAddressPoolName;
  /// The resource group ID of the VPC Public IP address pool.
  final pulumi.Input<String>? resourceGroupId;
  /// Security protection level.
  /// - If the configuration is empty, the default value is DDoS protection (Basic edition).
  /// - `AntiDDoS_Enhanced` indicates DDoS protection (enhanced version).
  final pulumi.Input<List<String>>? securityProtectionTypes;
  /// The status of the VPC Public IP address pool.
  final pulumi.Input<String>? status;
  /// The tags of PrefixList.
  final pulumi.Input<Map<String, String>>? tags;
  /// The total number of public IP address pools.
  final pulumi.Input<int>? totalIpNum;
  /// The number of used IP addresses in the public IP address pool.
  final pulumi.Input<int>? usedIpNum;

  /// Creates a new [PublicIpAddressPoolState].
  /// [bizType] The name of the VPC Public IP address pool.
  /// [createTime] The creation time of the resource
  /// [description] Description.
  /// [ipAddressRemaining] Whether there is a free IP address.
  /// [isp] The Internet service provider. Valid values: `BGP`, `BGP_PRO`, `ChinaTelecom`, `ChinaUnicom`, `ChinaMobile`, `ChinaTelecom_L2`, `ChinaUnicom_L2`, `ChinaMobile_L2`, `BGP_FinanceCloud`. Default Value: `BGP`.
  /// [publicIpAddressPoolId] Optional.
  /// [publicIpAddressPoolName] The name of the VPC Public IP address pool.
  /// [resourceGroupId] The resource group ID of the VPC Public IP address pool.
  /// [securityProtectionTypes] Security protection level.
  /// [status] The status of the VPC Public IP address pool.
  /// [tags] The tags of PrefixList.
  /// [totalIpNum] The total number of public IP address pools.
  /// [usedIpNum] The number of used IP addresses in the public IP address pool.
  PublicIpAddressPoolState({
    this.bizType,
    this.createTime,
    this.description,
    this.ipAddressRemaining,
    this.isp,
    this.publicIpAddressPoolId,
    this.publicIpAddressPoolName,
    this.resourceGroupId,
    this.securityProtectionTypes,
    this.status,
    this.tags,
    this.totalIpNum,
    this.usedIpNum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bizType': ?bizType,
      'createTime': ?createTime,
      'description': ?description,
      'ipAddressRemaining': ?ipAddressRemaining,
      'isp': ?isp,
      'publicIpAddressPoolId': ?publicIpAddressPoolId,
      'publicIpAddressPoolName': ?publicIpAddressPoolName,
      'resourceGroupId': ?resourceGroupId,
      'securityProtectionTypes': ?securityProtectionTypes,
      'status': ?status,
      'tags': ?tags,
      'totalIpNum': ?totalIpNum,
      'usedIpNum': ?usedIpNum,
    };
  }

  factory PublicIpAddressPoolState.fromMap(Map<String, dynamic> map) {
    return PublicIpAddressPoolState(
      bizType: map['bizType'] == null ? null : (map['bizType'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      ipAddressRemaining: map['ipAddressRemaining'] == null ? null : (map['ipAddressRemaining'] as bool).input(),
      isp: map['isp'] == null ? null : (map['isp'] as String).input(),
      publicIpAddressPoolId: map['publicIpAddressPoolId'] == null ? null : (map['publicIpAddressPoolId'] as String).input(),
      publicIpAddressPoolName: map['publicIpAddressPoolName'] == null ? null : (map['publicIpAddressPoolName'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      securityProtectionTypes: map['securityProtectionTypes'] == null ? null : ((map['securityProtectionTypes'] as List).cast<String>()).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      totalIpNum: map['totalIpNum'] == null ? null : (map['totalIpNum'] as int).input(),
      usedIpNum: map['usedIpNum'] == null ? null : (map['usedIpNum'] as int).input(),
    );
  }
}

