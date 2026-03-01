// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_common_bandwith_package_common_bandwith_package_args_doc}
/// The set of arguments for CommonBandwithPackage.
/// {@endtemplate}
/// {@macro pulumi_vpc_common_bandwith_package_common_bandwith_package_args_doc}
class CommonBandwithPackageArgs {
  /// The maximum bandwidth of the Internet Shared Bandwidth instance. Unit: Mbit/s.
  /// Valid values: `1` to `1000`. Default value: `1`.
  final pulumi.Input<String> bandwidth;
  /// The description of the EIP bandwidth plan. The description must be 2 to 256 characters in length. It must start with a letter but cannot start with `http://` or `https://`.
  final pulumi.Input<String>? bandwidthPackageName;
  /// Specifies whether to enable deletion protection. Valid values:
  final pulumi.Input<bool>? deletionProtection;
  /// The description of the Internet Shared Bandwidth instance.
  /// The description must be 0 to 256 characters in length and cannot start with `http://` or `https://`.
  final pulumi.Input<String>? description;
  /// Specifies whether to forcefully delete the Internet Shared Bandwidth instance. Valid values:
  final pulumi.Input<String>? force;
  /// Billing method of Internet Shared Bandwidth. Valid values:
  /// `PayByTraffic`: billed by primary traffic.
  ///
  /// - `PayByBandwidth` (default): Billing by bandwidth.
  /// - `PayBy95`: Billed as Enhanced 95.
  /// - `PayByDominantTraffic`: billed by primary traffic.
  final pulumi.Input<String>? internetChargeType;
  /// The line type. Valid values:
  ///
  /// - `BGP` (default) All regions support BGP (Multi-ISP).
  /// - `BGP_PRO` BGP (Multi-ISP) Pro lines are available in the China (Hong Kong), Singapore, Japan (Tokyo), Philippines (Manila), Malaysia (Kuala Lumpur), Indonesia (Jakarta), and Thailand (Bangkok) regions.
  ///
  /// If you are allowed to use single-ISP bandwidth, you can also use one of the following values:
  ///
  /// - `ChinaTelecom`
  /// - `ChinaUnicom`
  /// - `ChinaMobile`
  /// - `ChinaTelecom_L2`
  /// - `ChinaUnicom_L2`
  /// - `ChinaMobile_L2`
  ///
  /// If your services are deployed in China East 1 Finance, this parameter is required and you must set the value to `BGP_FinanceCloud`.
  final pulumi.Input<String>? isp;
  /// . Field 'name' has been deprecated from provider version 1.120.0. New field 'bandwidth_package_name' instead.
  final pulumi.Input<String>? name;
  /// The percentage of the minimum bandwidth commitment. The value is only `20`.
  ///
  /// This parameter is required when the value of `InternetChargeType` is `PayBy95`.
  ///
  /// > **NOTE:** This parameter is available only on the Alibaba Cloud China site.
  final pulumi.Input<int>? ratio;
  /// The ID of the resource group to which you want to move the resource.
  ///
  /// > **NOTE:**   You can use resource groups to facilitate resource grouping and permission management for an Alibaba Cloud. For more information, see [What is resource management?](https://www.alibabacloud.com/help/en/doc-detail/94475.html)
  final pulumi.Input<String>? resourceGroupId;
  /// The edition of Anti-DDoS. If you do not set this parameter, Anti-DDoS Origin Basic is used. If you set the value to AntiDDoS_Enhanced, Anti-DDoS Pro(Premium) is used. It is valid when `internet_charge_type` is `PayBy95`.
  final pulumi.Input<List<String>>? securityProtectionTypes;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// The zone of the Internet Shared Bandwidth instance. This parameter is required if you create an Internet Shared Bandwidth instance for a cloud box.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<String>? zone;

  /// Creates a new [CommonBandwithPackageArgs].
  /// [bandwidth] The maximum bandwidth of the Internet Shared Bandwidth instance. Unit: Mbit/s.
  /// [bandwidthPackageName] The description of the EIP bandwidth plan. The description must be 2 to 256 characters in length. It must start with a letter but cannot start with `http://` or `https://`.
  /// [deletionProtection] Specifies whether to enable deletion protection. Valid values:
  /// [description] The description of the Internet Shared Bandwidth instance.
  /// [force] Specifies whether to forcefully delete the Internet Shared Bandwidth instance. Valid values:
  /// [internetChargeType] Billing method of Internet Shared Bandwidth. Valid values:
  /// [isp] The line type. Valid values:
  /// [name] . Field 'name' has been deprecated from provider version 1.120.0. New field 'bandwidth_package_name' instead.
  /// [ratio] The percentage of the minimum bandwidth commitment. The value is only `20`.
  /// [resourceGroupId] The ID of the resource group to which you want to move the resource.
  /// [securityProtectionTypes] The edition of Anti-DDoS. If you do not set this parameter, Anti-DDoS Origin Basic is used. If you set the value to AntiDDoS_Enhanced, Anti-DDoS Pro(Premium) is used. It is valid when `internet_charge_type` is `PayBy95`.
  /// [tags] The tag of the resource
  /// [zone] The zone of the Internet Shared Bandwidth instance. This parameter is required if you create an Internet Shared Bandwidth instance for a cloud box.
  CommonBandwithPackageArgs({
    required pulumi.Output<String> bandwidth,
    pulumi.Output<String>? bandwidthPackageName,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<String>? description,
    pulumi.Output<String>? force,
    pulumi.Output<String>? internetChargeType,
    pulumi.Output<String>? isp,
    pulumi.Output<String>? name,
    pulumi.Output<int>? ratio,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<List<String>>? securityProtectionTypes,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? zone,
  }) :
      bandwidth = pulumi.Input.asInput<String>(bandwidth),
      bandwidthPackageName = pulumi.Input.asOptionalInput<String>(bandwidthPackageName),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      description = pulumi.Input.asOptionalInput<String>(description),
      force = pulumi.Input.asOptionalInput<String>(force),
      internetChargeType = pulumi.Input.asOptionalInput<String>(internetChargeType),
      isp = pulumi.Input.asOptionalInput<String>(isp),
      name = pulumi.Input.asOptionalInput<String>(name),
      ratio = pulumi.Input.asOptionalInput<int>(ratio),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      securityProtectionTypes = pulumi.Input.asOptionalInput<List<String>>(securityProtectionTypes),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': bandwidth,
      'bandwidthPackageName': ?bandwidthPackageName,
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'force': ?force,
      'internetChargeType': ?internetChargeType,
      'isp': ?isp,
      'name': ?name,
      'ratio': ?ratio,
      'resourceGroupId': ?resourceGroupId,
      'securityProtectionTypes': ?securityProtectionTypes,
      'tags': ?tags,
      'zone': ?zone,
    };
  }

  factory CommonBandwithPackageArgs.fromMap(Map<String, dynamic> map) {
    return CommonBandwithPackageArgs(
      bandwidth: pulumi.Output.create<String>(map['bandwidth'] as String),
      bandwidthPackageName: map['bandwidthPackageName'] == null ? null : pulumi.Output.create<String>(map['bandwidthPackageName'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      force: map['force'] == null ? null : pulumi.Output.create<String>(map['force'] as String),
      internetChargeType: map['internetChargeType'] == null ? null : pulumi.Output.create<String>(map['internetChargeType'] as String),
      isp: map['isp'] == null ? null : pulumi.Output.create<String>(map['isp'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ratio: map['ratio'] == null ? null : pulumi.Output.create<int>(map['ratio'] as int),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      securityProtectionTypes: map['securityProtectionTypes'] == null ? null : pulumi.Output.create<List<String>>((map['securityProtectionTypes'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

