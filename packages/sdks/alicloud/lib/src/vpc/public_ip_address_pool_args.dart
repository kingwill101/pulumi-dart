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
    pulumi.Output<String>? bizType,
    pulumi.Output<String>? description,
    pulumi.Output<String>? isp,
    pulumi.Output<String>? publicIpAddressPoolName,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<List<String>>? securityProtectionTypes,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      bizType = pulumi.Input.asOptionalInput<String>(bizType),
      description = pulumi.Input.asOptionalInput<String>(description),
      isp = pulumi.Input.asOptionalInput<String>(isp),
      publicIpAddressPoolName = pulumi.Input.asOptionalInput<String>(publicIpAddressPoolName),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      securityProtectionTypes = pulumi.Input.asOptionalInput<List<String>>(securityProtectionTypes),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      bizType: map['bizType'] == null ? null : pulumi.Output.create<String>(map['bizType'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      isp: map['isp'] == null ? null : pulumi.Output.create<String>(map['isp'] as String),
      publicIpAddressPoolName: map['publicIpAddressPoolName'] == null ? null : pulumi.Output.create<String>(map['publicIpAddressPoolName'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      securityProtectionTypes: map['securityProtectionTypes'] == null ? null : pulumi.Output.create<List<String>>((map['securityProtectionTypes'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

