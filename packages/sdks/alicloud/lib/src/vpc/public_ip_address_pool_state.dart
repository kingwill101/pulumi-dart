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
      bizType: (() { final guardedValue = map['bizType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddressRemaining: (() { final guardedValue = map['ipAddressRemaining']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isp: (() { final guardedValue = map['isp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpAddressPoolId: (() { final guardedValue = map['publicIpAddressPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpAddressPoolName: (() { final guardedValue = map['publicIpAddressPoolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityProtectionTypes: (() { final guardedValue = map['securityProtectionTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      totalIpNum: (() { final guardedValue = map['totalIpNum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      usedIpNum: (() { final guardedValue = map['usedIpNum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

