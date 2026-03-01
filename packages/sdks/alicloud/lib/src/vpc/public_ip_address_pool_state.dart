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
    pulumi.Output<String>? bizType,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? ipAddressRemaining,
    pulumi.Output<String>? isp,
    pulumi.Output<String>? publicIpAddressPoolId,
    pulumi.Output<String>? publicIpAddressPoolName,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<List<String>>? securityProtectionTypes,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<int>? totalIpNum,
    pulumi.Output<int>? usedIpNum,
  }) :
      bizType = pulumi.Input.asOptionalInput<String>(bizType),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      ipAddressRemaining = pulumi.Input.asOptionalInput<bool>(ipAddressRemaining),
      isp = pulumi.Input.asOptionalInput<String>(isp),
      publicIpAddressPoolId = pulumi.Input.asOptionalInput<String>(publicIpAddressPoolId),
      publicIpAddressPoolName = pulumi.Input.asOptionalInput<String>(publicIpAddressPoolName),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      securityProtectionTypes = pulumi.Input.asOptionalInput<List<String>>(securityProtectionTypes),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      totalIpNum = pulumi.Input.asOptionalInput<int>(totalIpNum),
      usedIpNum = pulumi.Input.asOptionalInput<int>(usedIpNum);

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
      bizType: map['bizType'] == null ? null : pulumi.Output.create<String>(map['bizType'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      ipAddressRemaining: map['ipAddressRemaining'] == null ? null : pulumi.Output.create<bool>(map['ipAddressRemaining'] as bool),
      isp: map['isp'] == null ? null : pulumi.Output.create<String>(map['isp'] as String),
      publicIpAddressPoolId: map['publicIpAddressPoolId'] == null ? null : pulumi.Output.create<String>(map['publicIpAddressPoolId'] as String),
      publicIpAddressPoolName: map['publicIpAddressPoolName'] == null ? null : pulumi.Output.create<String>(map['publicIpAddressPoolName'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      securityProtectionTypes: map['securityProtectionTypes'] == null ? null : pulumi.Output.create<List<String>>((map['securityProtectionTypes'] as List).cast<String>()),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      totalIpNum: map['totalIpNum'] == null ? null : pulumi.Output.create<int>(map['totalIpNum'] as int),
      usedIpNum: map['usedIpNum'] == null ? null : pulumi.Output.create<int>(map['usedIpNum'] as int),
    );
  }
}

