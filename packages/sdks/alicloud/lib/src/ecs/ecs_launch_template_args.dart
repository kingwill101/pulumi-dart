// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecs_launch_template_data_disk.dart';
import 'ecs_launch_template_image_options.dart';
import 'ecs_launch_template_network_interfaces.dart';
import 'ecs_launch_template_system_disk.dart';

/// {@template pulumi_ecs_ecs_launch_template_ecs_launch_template_args_doc}
/// The set of arguments for EcsLaunchTemplate.
/// {@endtemplate}
/// {@macro pulumi_ecs_ecs_launch_template_ecs_launch_template_args_doc}
class EcsLaunchTemplateArgs {
  /// Instance auto release time. The time is presented using the ISO8601 standard and in UTC time. The format is  YYYY-MM-DDTHH:MM:SSZ.
  final pulumi.Input<String>? autoReleaseTime;
  /// Specifies whether to enable auto-renewal for the instance. This parameter is valid only if `internet_charge_type` is set to `PrePaid`.
  final pulumi.Input<bool>? autoRenew;
  /// The auto-renewal period of the instance. Valid values when `period_unit` is set to `Month`: 1, 2, 3, 6, 12, 24, 36, 48, and 60. Default value: 1.
  final pulumi.Input<int>? autoRenewPeriod;
  /// The list of data disks created with instance. See `data_disks` below.
  final pulumi.Input<List<EcsLaunchTemplateDataDisk>>? dataDisks;
  /// The version number of the default launch template version. Default to 1. It is conflict with `update_default_version_number`.
  final pulumi.Input<int>? defaultVersionNumber;
  /// The Deployment Set Id.
  final pulumi.Input<String>? deploymentSetId;
  /// Description of instance launch template version 1. It can be [2, 256] characters in length. It cannot start with "http://" or "https://". The default value is null.
  final pulumi.Input<String>? description;
  /// Whether to enable the instance operating system configuration.
  final pulumi.Input<bool>? enableVmOsConfig;
  /// Instance host name.It cannot start or end with a period (.) or a hyphen (-) and it cannot have two or more consecutive periods (.) or hyphens (-).For Windows: The host name can be [2, 15] characters in length. It can contain A-Z, a-z, numbers, periods (.), and hyphens (-). It cannot only contain numbers. For other operating systems: The host name can be [2, 64] characters in length. It can be segments separated by periods (.). It can contain A-Z, a-z, numbers, and hyphens (-).
  final pulumi.Input<String>? hostName;
  /// Whether to enable access to instance metadata. Valid values:
  /// - enabled: Enabled.
  /// - disabled: Disabled.
  /// **NOTE:** From version 1.260.0, `http_endpoint` can be modified.
  final pulumi.Input<String>? httpEndpoint;
  /// The HTTP PUT response hop limit required for instance metadata requests. **NOTE:** From version 1.260.0, `http_put_response_hop_limit` can be modified.
  final pulumi.Input<int>? httpPutResponseHopLimit;
  /// Whether to use the hardened mode (IMDSv2) when accessing instance metadata. Valid values:
  /// - optional: Not mandatory.
  /// - required: Mandatory. After this value is set, the normal mode cannot access instance metadata.
  /// **NOTE:** From version 1.260.0, `http_tokens` can be modified.
  final pulumi.Input<String>? httpTokens;
  /// The Image ID.
  final pulumi.Input<String>? imageId;
  /// The options of images. See `image_options` below.
  final pulumi.Input<EcsLaunchTemplateImageOptions>? imageOptions;
  /// Mirror source. Valid values: `system`, `self`, `others`, `marketplace`, `""`. Default to: `""`.
  final pulumi.Input<String>? imageOwnerAlias;
  /// Billing methods. Valid values: `PostPaid`, `PrePaid`.
  final pulumi.Input<String>? instanceChargeType;
  /// The name of the instance. The name must be `2` to `128` characters in length. It must start with a letter and cannot start with http:// or https://. It can contain letters, digits, colons (:), underscores (_), periods (.), commas (,), brackets ([]), and hyphens (-).
  final pulumi.Input<String>? instanceName;
  /// Instance type. For more information, call resource_alicloud_instances to obtain the latest instance type list.
  final pulumi.Input<String>? instanceType;
  /// Internet bandwidth billing method. Valid values: `PayByTraffic`, `PayByBandwidth`.
  final pulumi.Input<String>? internetChargeType;
  /// The maximum inbound bandwidth from the Internet network, measured in Mbit/s. Value range: [1, 200].
  final pulumi.Input<int>? internetMaxBandwidthIn;
  /// Maximum outbound bandwidth from the Internet, its unit of measurement is Mbit/s. Value range: [0, 100].
  final pulumi.Input<int>? internetMaxBandwidthOut;
  /// Whether it is an I/O-optimized instance or not. Valid values: `none`, `optimized`.
  final pulumi.Input<String>? ioOptimized;
  /// The name of the key pair.
  /// - Ignore this parameter for Windows instances. It is null by default. Even if you enter this parameter, only the  Password content is used.
  /// - The password logon method for Linux instances is set to forbidden upon initialization.
  final pulumi.Input<String>? keyPairName;
  /// The name of Launch Template.
  final pulumi.Input<String>? launchTemplateName;
  /// It has been deprecated from version 1.120.0, and use field `launch_template_name` instead.
  final pulumi.Input<String>? name;
  /// The list of network interfaces created with instance. See `network_interfaces` below.
  final pulumi.Input<EcsLaunchTemplateNetworkInterfaces>? networkInterfaces;
  /// Network type of the instance. Valid values: `classic`, `vpc`.
  final pulumi.Input<String>? networkType;
  /// Whether to use the password preset by the mirror.
  final pulumi.Input<bool>? passwordInherit;
  /// The subscription period of the instance. Unit: months. This parameter takes effect and is required only when InstanceChargeType is set to PrePaid. If the DedicatedHostId parameter is specified, the value of the Period parameter must be within the subscription period of the dedicated host.
  /// - When the `period_unit` is set to `Week`, the valid values of the Period parameter are `1`, `2`, `3`.
  /// - When the `period_unit` is set to `Month`, the valid values of the Period parameter are `1`, `2`, `3`, `6`, `12`, `24`, `36`, `48`, and `60`.
  final pulumi.Input<int>? period;
  /// The unit of the subscription period. Default value: `Month`. Valid values: `Week`, `Month`.
  final pulumi.Input<String>? periodUnit;
  /// The private IP address of the instance.
  final pulumi.Input<String>? privateIpAddress;
  /// The RAM role name of the instance. You can use the RAM API ListRoles to query instance RAM role names.
  final pulumi.Input<String>? ramRoleName;
  /// The ID of the resource group to which to assign the instance, Elastic Block Storage (EBS) device, and ENI.
  final pulumi.Input<String>? resourceGroupId;
  /// Whether or not to activate the security enhancement feature and install network security software free of charge. Valid values: `Active`, `Deactive`.
  final pulumi.Input<String>? securityEnhancementStrategy;
  /// The security group ID.
  final pulumi.Input<String>? securityGroupId;
  /// The ID of security group N to which to assign the instance.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// The protection period of the preemptible instance. Unit: hours. Valid values: `0`, `1`, `2`, `3`, `4`, `5`, and `6`. Default to: `1`.
  final pulumi.Input<String>? spotDuration;
  /// Sets the maximum hourly instance price. Supports up to three decimal places.
  final pulumi.Input<double>? spotPriceLimit;
  /// The spot strategy for a Pay-As-You-Go instance. This parameter is valid and required only when InstanceChargeType is set to PostPaid. Valid values: `NoSpot`, `SpotAsPriceGo`, `SpotWithPriceLimit`.
  final pulumi.Input<String>? spotStrategy;
  /// The System Disk. See `system_disk` below.
  final pulumi.Input<EcsLaunchTemplateSystemDisk>? systemDisk;
  /// It has been deprecated from version 1.120.0, and use field `system_disk` instead.
  final pulumi.Input<String>? systemDiskCategory;
  /// It has been deprecated from version 1.120.0, and use field `system_disk` instead.
  final pulumi.Input<String>? systemDiskDescription;
  /// It has been deprecated from version 1.120.0, and use field `system_disk` instead.
  final pulumi.Input<String>? systemDiskName;
  /// It has been deprecated from version 1.120.0, and use field `system_disk` instead.
  final pulumi.Input<int>? systemDiskSize;
  /// A mapping of tags to assign to instance, block storage, and elastic network.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  final pulumi.Input<Map<String, String>>? tags;
  /// The template resource group id.
  final pulumi.Input<String>? templateResourceGroupId;
  /// A mapping of tags to assign to the launch template.
  final pulumi.Input<Map<String, String>>? templateTags;
  /// Whether to update the default version of the launch template to the latest version automatically. It is conflict with `default_version_number`.
  final pulumi.Input<bool>? updateDefaultVersionNumber;
  /// The User Data.
  final pulumi.Input<String>? userData;
  /// It has been deprecated from version 1.120.0, and use field `user_data` instead.
  final pulumi.Input<String>? userdata;
  /// The description of the launch template version. The description must be 2 to 256 characters in length and cannot start with http:// or https://.
  final pulumi.Input<String>? versionDescription;
  /// The ID of the VPC.
  final pulumi.Input<String>? vpcId;
  /// When creating a VPC-Connected instance, you must specify its VSwitch ID.
  final pulumi.Input<String>? vswitchId;
  /// The zone ID of the instance.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [EcsLaunchTemplateArgs].
  /// [autoReleaseTime] Instance auto release time. The time is presented using the ISO8601 standard and in UTC time. The format is  YYYY-MM-DDTHH:MM:SSZ.
  /// [autoRenew] Specifies whether to enable auto-renewal for the instance. This parameter is valid only if `internet_charge_type` is set to `PrePaid`.
  /// [autoRenewPeriod] The auto-renewal period of the instance. Valid values when `period_unit` is set to `Month`: 1, 2, 3, 6, 12, 24, 36, 48, and 60. Default value: 1.
  /// [dataDisks] The list of data disks created with instance. See `data_disks` below.
  /// [defaultVersionNumber] The version number of the default launch template version. Default to 1. It is conflict with `update_default_version_number`.
  /// [deploymentSetId] The Deployment Set Id.
  /// [description] Description of instance launch template version 1. It can be [2, 256] characters in length. It cannot start with "http://" or "https://". The default value is null.
  /// [enableVmOsConfig] Whether to enable the instance operating system configuration.
  /// [hostName] Instance host name.It cannot start or end with a period (.) or a hyphen (-) and it cannot have two or more consecutive periods (.) or hyphens (-).For Windows: The host name can be [2, 15] characters in length. It can contain A-Z, a-z, numbers, periods (.), and hyphens (-). It cannot only contain numbers. For other operating systems: The host name can be [2, 64] characters in length. It can be segments separated by periods (.). It can contain A-Z, a-z, numbers, and hyphens (-).
  /// [httpEndpoint] Whether to enable access to instance metadata. Valid values:
  /// [httpPutResponseHopLimit] The HTTP PUT response hop limit required for instance metadata requests. **NOTE:** From version 1.260.0, `http_put_response_hop_limit` can be modified.
  /// [httpTokens] Whether to use the hardened mode (IMDSv2) when accessing instance metadata. Valid values:
  /// [imageId] The Image ID.
  /// [imageOptions] The options of images. See `image_options` below.
  /// [imageOwnerAlias] Mirror source. Valid values: `system`, `self`, `others`, `marketplace`, `""`. Default to: `""`.
  /// [instanceChargeType] Billing methods. Valid values: `PostPaid`, `PrePaid`.
  /// [instanceName] The name of the instance. The name must be `2` to `128` characters in length. It must start with a letter and cannot start with http:// or https://. It can contain letters, digits, colons (:), underscores (_), periods (.), commas (,), brackets ([]), and hyphens (-).
  /// [instanceType] Instance type. For more information, call resource_alicloud_instances to obtain the latest instance type list.
  /// [internetChargeType] Internet bandwidth billing method. Valid values: `PayByTraffic`, `PayByBandwidth`.
  /// [internetMaxBandwidthIn] The maximum inbound bandwidth from the Internet network, measured in Mbit/s. Value range: [1, 200].
  /// [internetMaxBandwidthOut] Maximum outbound bandwidth from the Internet, its unit of measurement is Mbit/s. Value range: [0, 100].
  /// [ioOptimized] Whether it is an I/O-optimized instance or not. Valid values: `none`, `optimized`.
  /// [keyPairName] The name of the key pair.
  /// [launchTemplateName] The name of Launch Template.
  /// [name] It has been deprecated from version 1.120.0, and use field `launch_template_name` instead.
  /// [networkInterfaces] The list of network interfaces created with instance. See `network_interfaces` below.
  /// [networkType] Network type of the instance. Valid values: `classic`, `vpc`.
  /// [passwordInherit] Whether to use the password preset by the mirror.
  /// [period] The subscription period of the instance. Unit: months. This parameter takes effect and is required only when InstanceChargeType is set to PrePaid. If the DedicatedHostId parameter is specified, the value of the Period parameter must be within the subscription period of the dedicated host.
  /// [periodUnit] The unit of the subscription period. Default value: `Month`. Valid values: `Week`, `Month`.
  /// [privateIpAddress] The private IP address of the instance.
  /// [ramRoleName] The RAM role name of the instance. You can use the RAM API ListRoles to query instance RAM role names.
  /// [resourceGroupId] The ID of the resource group to which to assign the instance, Elastic Block Storage (EBS) device, and ENI.
  /// [securityEnhancementStrategy] Whether or not to activate the security enhancement feature and install network security software free of charge. Valid values: `Active`, `Deactive`.
  /// [securityGroupId] The security group ID.
  /// [securityGroupIds] The ID of security group N to which to assign the instance.
  /// [spotDuration] The protection period of the preemptible instance. Unit: hours. Valid values: `0`, `1`, `2`, `3`, `4`, `5`, and `6`. Default to: `1`.
  /// [spotPriceLimit] Sets the maximum hourly instance price. Supports up to three decimal places.
  /// [spotStrategy] The spot strategy for a Pay-As-You-Go instance. This parameter is valid and required only when InstanceChargeType is set to PostPaid. Valid values: `NoSpot`, `SpotAsPriceGo`, `SpotWithPriceLimit`.
  /// [systemDisk] The System Disk. See `system_disk` below.
  /// [systemDiskCategory] It has been deprecated from version 1.120.0, and use field `system_disk` instead.
  /// [systemDiskDescription] It has been deprecated from version 1.120.0, and use field `system_disk` instead.
  /// [systemDiskName] It has been deprecated from version 1.120.0, and use field `system_disk` instead.
  /// [systemDiskSize] It has been deprecated from version 1.120.0, and use field `system_disk` instead.
  /// [tags] A mapping of tags to assign to instance, block storage, and elastic network.
  /// [templateResourceGroupId] The template resource group id.
  /// [templateTags] A mapping of tags to assign to the launch template.
  /// [updateDefaultVersionNumber] Whether to update the default version of the launch template to the latest version automatically. It is conflict with `default_version_number`.
  /// [userData] The User Data.
  /// [userdata] It has been deprecated from version 1.120.0, and use field `user_data` instead.
  /// [versionDescription] The description of the launch template version. The description must be 2 to 256 characters in length and cannot start with http:// or https://.
  /// [vpcId] The ID of the VPC.
  /// [vswitchId] When creating a VPC-Connected instance, you must specify its VSwitch ID.
  /// [zoneId] The zone ID of the instance.
  EcsLaunchTemplateArgs({
    this.autoReleaseTime,
    this.autoRenew,
    this.autoRenewPeriod,
    this.dataDisks,
    this.defaultVersionNumber,
    this.deploymentSetId,
    this.description,
    this.enableVmOsConfig,
    this.hostName,
    this.httpEndpoint,
    this.httpPutResponseHopLimit,
    this.httpTokens,
    this.imageId,
    this.imageOptions,
    this.imageOwnerAlias,
    this.instanceChargeType,
    this.instanceName,
    this.instanceType,
    this.internetChargeType,
    this.internetMaxBandwidthIn,
    this.internetMaxBandwidthOut,
    this.ioOptimized,
    this.keyPairName,
    this.launchTemplateName,
    this.name,
    this.networkInterfaces,
    this.networkType,
    this.passwordInherit,
    this.period,
    this.periodUnit,
    this.privateIpAddress,
    this.ramRoleName,
    this.resourceGroupId,
    this.securityEnhancementStrategy,
    this.securityGroupId,
    this.securityGroupIds,
    this.spotDuration,
    this.spotPriceLimit,
    this.spotStrategy,
    this.systemDisk,
    this.systemDiskCategory,
    this.systemDiskDescription,
    this.systemDiskName,
    this.systemDiskSize,
    this.tags,
    this.templateResourceGroupId,
    this.templateTags,
    this.updateDefaultVersionNumber,
    this.userData,
    this.userdata,
    this.versionDescription,
    this.vpcId,
    this.vswitchId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoReleaseTime': ?autoReleaseTime,
      'autoRenew': ?autoRenew,
      'autoRenewPeriod': ?autoRenewPeriod,
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<EcsLaunchTemplateDataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<EcsLaunchTemplateDataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultVersionNumber': ?defaultVersionNumber,
      'deploymentSetId': ?deploymentSetId,
      'description': ?description,
      'enableVmOsConfig': ?enableVmOsConfig,
      'hostName': ?hostName,
      'httpEndpoint': ?httpEndpoint,
      'httpPutResponseHopLimit': ?httpPutResponseHopLimit,
      'httpTokens': ?httpTokens,
      'imageId': ?imageId,
      'imageOptions': ?pulumi.Input.mapOptionalInputValue<EcsLaunchTemplateImageOptions, Map<String, dynamic>>(imageOptions, (value) => value.toMap()),
      'imageOwnerAlias': ?imageOwnerAlias,
      'instanceChargeType': ?instanceChargeType,
      'instanceName': ?instanceName,
      'instanceType': ?instanceType,
      'internetChargeType': ?internetChargeType,
      'internetMaxBandwidthIn': ?internetMaxBandwidthIn,
      'internetMaxBandwidthOut': ?internetMaxBandwidthOut,
      'ioOptimized': ?ioOptimized,
      'keyPairName': ?keyPairName,
      'launchTemplateName': ?launchTemplateName,
      'name': ?name,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<EcsLaunchTemplateNetworkInterfaces, Map<String, dynamic>>(networkInterfaces, (value) => value.toMap()),
      'networkType': ?networkType,
      'passwordInherit': ?passwordInherit,
      'period': ?period,
      'periodUnit': ?periodUnit,
      'privateIpAddress': ?privateIpAddress,
      'ramRoleName': ?ramRoleName,
      'resourceGroupId': ?resourceGroupId,
      'securityEnhancementStrategy': ?securityEnhancementStrategy,
      'securityGroupId': ?securityGroupId,
      'securityGroupIds': ?securityGroupIds,
      'spotDuration': ?spotDuration,
      'spotPriceLimit': ?spotPriceLimit,
      'spotStrategy': ?spotStrategy,
      'systemDisk': ?pulumi.Input.mapOptionalInputValue<EcsLaunchTemplateSystemDisk, Map<String, dynamic>>(systemDisk, (value) => value.toMap()),
      'systemDiskCategory': ?systemDiskCategory,
      'systemDiskDescription': ?systemDiskDescription,
      'systemDiskName': ?systemDiskName,
      'systemDiskSize': ?systemDiskSize,
      'tags': ?tags,
      'templateResourceGroupId': ?templateResourceGroupId,
      'templateTags': ?templateTags,
      'updateDefaultVersionNumber': ?updateDefaultVersionNumber,
      'userData': ?userData,
      'userdata': ?userdata,
      'versionDescription': ?versionDescription,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory EcsLaunchTemplateArgs.fromMap(Map<String, dynamic> map) {
    return EcsLaunchTemplateArgs(
      autoReleaseTime: map['autoReleaseTime'] == null ? null : (map['autoReleaseTime'] as String).input(),
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew'] as bool).input(),
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : (map['autoRenewPeriod'] as int).input(),
      dataDisks: map['dataDisks'] == null ? null : (pulumi.Input.decodeList<EcsLaunchTemplateDataDisk>(map['dataDisks'], (value) => EcsLaunchTemplateDataDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      defaultVersionNumber: map['defaultVersionNumber'] == null ? null : (map['defaultVersionNumber'] as int).input(),
      deploymentSetId: map['deploymentSetId'] == null ? null : (map['deploymentSetId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      enableVmOsConfig: map['enableVmOsConfig'] == null ? null : (map['enableVmOsConfig'] as bool).input(),
      hostName: map['hostName'] == null ? null : (map['hostName'] as String).input(),
      httpEndpoint: map['httpEndpoint'] == null ? null : (map['httpEndpoint'] as String).input(),
      httpPutResponseHopLimit: map['httpPutResponseHopLimit'] == null ? null : (map['httpPutResponseHopLimit'] as int).input(),
      httpTokens: map['httpTokens'] == null ? null : (map['httpTokens'] as String).input(),
      imageId: map['imageId'] == null ? null : (map['imageId'] as String).input(),
      imageOptions: map['imageOptions'] == null ? null : (EcsLaunchTemplateImageOptions.fromMap((map['imageOptions'] as Map).cast<String, dynamic>())).input(),
      imageOwnerAlias: map['imageOwnerAlias'] == null ? null : (map['imageOwnerAlias'] as String).input(),
      instanceChargeType: map['instanceChargeType'] == null ? null : (map['instanceChargeType'] as String).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName'] as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType'] as String).input(),
      internetChargeType: map['internetChargeType'] == null ? null : (map['internetChargeType'] as String).input(),
      internetMaxBandwidthIn: map['internetMaxBandwidthIn'] == null ? null : (map['internetMaxBandwidthIn'] as int).input(),
      internetMaxBandwidthOut: map['internetMaxBandwidthOut'] == null ? null : (map['internetMaxBandwidthOut'] as int).input(),
      ioOptimized: map['ioOptimized'] == null ? null : (map['ioOptimized'] as String).input(),
      keyPairName: map['keyPairName'] == null ? null : (map['keyPairName'] as String).input(),
      launchTemplateName: map['launchTemplateName'] == null ? null : (map['launchTemplateName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkInterfaces: map['networkInterfaces'] == null ? null : (EcsLaunchTemplateNetworkInterfaces.fromMap((map['networkInterfaces'] as Map).cast<String, dynamic>())).input(),
      networkType: map['networkType'] == null ? null : (map['networkType'] as String).input(),
      passwordInherit: map['passwordInherit'] == null ? null : (map['passwordInherit'] as bool).input(),
      period: map['period'] == null ? null : (map['period'] as int).input(),
      periodUnit: map['periodUnit'] == null ? null : (map['periodUnit'] as String).input(),
      privateIpAddress: map['privateIpAddress'] == null ? null : (map['privateIpAddress'] as String).input(),
      ramRoleName: map['ramRoleName'] == null ? null : (map['ramRoleName'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      securityEnhancementStrategy: map['securityEnhancementStrategy'] == null ? null : (map['securityEnhancementStrategy'] as String).input(),
      securityGroupId: map['securityGroupId'] == null ? null : (map['securityGroupId'] as String).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : ((map['securityGroupIds'] as List).cast<String>()).input(),
      spotDuration: map['spotDuration'] == null ? null : (map['spotDuration'] as String).input(),
      spotPriceLimit: map['spotPriceLimit'] == null ? null : (map['spotPriceLimit'] as double).input(),
      spotStrategy: map['spotStrategy'] == null ? null : (map['spotStrategy'] as String).input(),
      systemDisk: map['systemDisk'] == null ? null : (EcsLaunchTemplateSystemDisk.fromMap((map['systemDisk'] as Map).cast<String, dynamic>())).input(),
      systemDiskCategory: map['systemDiskCategory'] == null ? null : (map['systemDiskCategory'] as String).input(),
      systemDiskDescription: map['systemDiskDescription'] == null ? null : (map['systemDiskDescription'] as String).input(),
      systemDiskName: map['systemDiskName'] == null ? null : (map['systemDiskName'] as String).input(),
      systemDiskSize: map['systemDiskSize'] == null ? null : (map['systemDiskSize'] as int).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      templateResourceGroupId: map['templateResourceGroupId'] == null ? null : (map['templateResourceGroupId'] as String).input(),
      templateTags: map['templateTags'] == null ? null : ((map['templateTags'] as Map).cast<String, String>()).input(),
      updateDefaultVersionNumber: map['updateDefaultVersionNumber'] == null ? null : (map['updateDefaultVersionNumber'] as bool).input(),
      userData: map['userData'] == null ? null : (map['userData'] as String).input(),
      userdata: map['userdata'] == null ? null : (map['userdata'] as String).input(),
      versionDescription: map['versionDescription'] == null ? null : (map['versionDescription'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId'] as String).input(),
    );
  }
}

