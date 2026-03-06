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
  const PublicIpAddressPoolArgs({
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
      bizType: (() { final guardedValue = map['bizType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isp: (() { final guardedValue = map['isp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpAddressPoolName: (() { final guardedValue = map['publicIpAddressPoolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityProtectionTypes: (() { final guardedValue = map['securityProtectionTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

