// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_public_ip_address_pool_public_ip_address_pool_args_doc}
/// The set of arguments for PublicIpAddressPool.
/// {@endtemplate}
/// {@macro pulumi_vpc_public_ip_address_pool_public_ip_address_pool_args_doc}
class PublicIpAddressPoolArgs {
  /// The name of the VPC Public IP address pool.
  final pulumi.Input<String>? bizType;
  /// Description.
  final pulumi.Input<String>? description;
  /// The Internet service provider. Valid values: `BGP`, `BGP_PRO`, `ChinaTelecom`, `ChinaUnicom`, `ChinaMobile`, `ChinaTelecom_L2`, `ChinaUnicom_L2`, `ChinaMobile_L2`, `BGP_FinanceCloud`. Default Value: `BGP`.
  final pulumi.Input<String>? isp;
  /// The name of the VPC Public IP address pool.
  final pulumi.Input<String>? publicIpAddressPoolName;
  /// The resource group ID of the VPC Public IP address pool.
  final pulumi.Input<String>? resourceGroupId;
  /// Security protection level.
  /// - If the configuration is empty, the default value is DDoS protection (Basic edition).
  /// - `AntiDDoS_Enhanced` indicates DDoS protection (enhanced version).
  final pulumi.Input<List<String>>? securityProtectionTypes;
  /// The tags of PrefixList.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PublicIpAddressPoolArgs].
  /// [bizType] The name of the VPC Public IP address pool.
  /// [description] Description.
  /// [isp] The Internet service provider. Valid values: `BGP`, `BGP_PRO`, `ChinaTelecom`, `ChinaUnicom`, `ChinaMobile`, `ChinaTelecom_L2`, `ChinaUnicom_L2`, `ChinaMobile_L2`, `BGP_FinanceCloud`. Default Value: `BGP`.
  /// [publicIpAddressPoolName] The name of the VPC Public IP address pool.
  /// [resourceGroupId] The resource group ID of the VPC Public IP address pool.
  /// [securityProtectionTypes] Security protection level.
  /// [tags] The tags of PrefixList.
  PublicIpAddressPoolArgs({
    this.bizType,
    this.description,
    this.isp,
    this.publicIpAddressPoolName,
    this.resourceGroupId,
    this.securityProtectionTypes,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bizType': ?bizType,
      'description': ?description,
      'isp': ?isp,
      'publicIpAddressPoolName': ?publicIpAddressPoolName,
      'resourceGroupId': ?resourceGroupId,
      'securityProtectionTypes': ?securityProtectionTypes,
      'tags': ?tags,
    };
  }

  factory PublicIpAddressPoolArgs.fromMap(Map<String, dynamic> map) {
    return PublicIpAddressPoolArgs(
      bizType: map['bizType'] == null ? null : (map['bizType'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      isp: map['isp'] == null ? null : (map['isp'] as String).input(),
      publicIpAddressPoolName: map['publicIpAddressPoolName'] == null ? null : (map['publicIpAddressPoolName'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      securityProtectionTypes: map['securityProtectionTypes'] == null ? null : ((map['securityProtectionTypes'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

