// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecs_launch_template_data_disk.dart';
import 'ecs_launch_template_image_options.dart';
import 'ecs_launch_template_network_interfaces.dart';
import 'ecs_launch_template_system_disk.dart';

/// Input properties used for looking up and filtering EcsLaunchTemplate resources.
class EcsLaunchTemplateState {
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
  /// The latest version number of the launch template.
  final pulumi.Input<int>? latestVersionNumber;
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

  /// Creates a new [EcsLaunchTemplateState].
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
  /// [latestVersionNumber] The latest version number of the launch template.
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
  EcsLaunchTemplateState({
    pulumi.Output<String>? autoReleaseTime,
    pulumi.Output<bool>? autoRenew,
    pulumi.Output<int>? autoRenewPeriod,
    pulumi.Output<List<EcsLaunchTemplateDataDisk>>? dataDisks,
    pulumi.Output<int>? defaultVersionNumber,
    pulumi.Output<String>? deploymentSetId,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enableVmOsConfig,
    pulumi.Output<String>? hostName,
    pulumi.Output<String>? httpEndpoint,
    pulumi.Output<int>? httpPutResponseHopLimit,
    pulumi.Output<String>? httpTokens,
    pulumi.Output<String>? imageId,
    pulumi.Output<EcsLaunchTemplateImageOptions>? imageOptions,
    pulumi.Output<String>? imageOwnerAlias,
    pulumi.Output<String>? instanceChargeType,
    pulumi.Output<String>? instanceName,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? internetChargeType,
    pulumi.Output<int>? internetMaxBandwidthIn,
    pulumi.Output<int>? internetMaxBandwidthOut,
    pulumi.Output<String>? ioOptimized,
    pulumi.Output<String>? keyPairName,
    pulumi.Output<int>? latestVersionNumber,
    pulumi.Output<String>? launchTemplateName,
    pulumi.Output<String>? name,
    pulumi.Output<EcsLaunchTemplateNetworkInterfaces>? networkInterfaces,
    pulumi.Output<String>? networkType,
    pulumi.Output<bool>? passwordInherit,
    pulumi.Output<int>? period,
    pulumi.Output<String>? periodUnit,
    pulumi.Output<String>? privateIpAddress,
    pulumi.Output<String>? ramRoleName,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? securityEnhancementStrategy,
    pulumi.Output<String>? securityGroupId,
    pulumi.Output<List<String>>? securityGroupIds,
    pulumi.Output<String>? spotDuration,
    pulumi.Output<double>? spotPriceLimit,
    pulumi.Output<String>? spotStrategy,
    pulumi.Output<EcsLaunchTemplateSystemDisk>? systemDisk,
    pulumi.Output<String>? systemDiskCategory,
    pulumi.Output<String>? systemDiskDescription,
    pulumi.Output<String>? systemDiskName,
    pulumi.Output<int>? systemDiskSize,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? templateResourceGroupId,
    pulumi.Output<Map<String, String>>? templateTags,
    pulumi.Output<bool>? updateDefaultVersionNumber,
    pulumi.Output<String>? userData,
    pulumi.Output<String>? userdata,
    pulumi.Output<String>? versionDescription,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
    pulumi.Output<String>? zoneId,
  }) :
      autoReleaseTime = pulumi.Input.asOptionalInput<String>(autoReleaseTime),
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      autoRenewPeriod = pulumi.Input.asOptionalInput<int>(autoRenewPeriod),
      dataDisks = pulumi.Input.asOptionalInput<List<EcsLaunchTemplateDataDisk>>(dataDisks),
      defaultVersionNumber = pulumi.Input.asOptionalInput<int>(defaultVersionNumber),
      deploymentSetId = pulumi.Input.asOptionalInput<String>(deploymentSetId),
      description = pulumi.Input.asOptionalInput<String>(description),
      enableVmOsConfig = pulumi.Input.asOptionalInput<bool>(enableVmOsConfig),
      hostName = pulumi.Input.asOptionalInput<String>(hostName),
      httpEndpoint = pulumi.Input.asOptionalInput<String>(httpEndpoint),
      httpPutResponseHopLimit = pulumi.Input.asOptionalInput<int>(httpPutResponseHopLimit),
      httpTokens = pulumi.Input.asOptionalInput<String>(httpTokens),
      imageId = pulumi.Input.asOptionalInput<String>(imageId),
      imageOptions = pulumi.Input.asOptionalInput<EcsLaunchTemplateImageOptions>(imageOptions),
      imageOwnerAlias = pulumi.Input.asOptionalInput<String>(imageOwnerAlias),
      instanceChargeType = pulumi.Input.asOptionalInput<String>(instanceChargeType),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      internetChargeType = pulumi.Input.asOptionalInput<String>(internetChargeType),
      internetMaxBandwidthIn = pulumi.Input.asOptionalInput<int>(internetMaxBandwidthIn),
      internetMaxBandwidthOut = pulumi.Input.asOptionalInput<int>(internetMaxBandwidthOut),
      ioOptimized = pulumi.Input.asOptionalInput<String>(ioOptimized),
      keyPairName = pulumi.Input.asOptionalInput<String>(keyPairName),
      latestVersionNumber = pulumi.Input.asOptionalInput<int>(latestVersionNumber),
      launchTemplateName = pulumi.Input.asOptionalInput<String>(launchTemplateName),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkInterfaces = pulumi.Input.asOptionalInput<EcsLaunchTemplateNetworkInterfaces>(networkInterfaces),
      networkType = pulumi.Input.asOptionalInput<String>(networkType),
      passwordInherit = pulumi.Input.asOptionalInput<bool>(passwordInherit),
      period = pulumi.Input.asOptionalInput<int>(period),
      periodUnit = pulumi.Input.asOptionalInput<String>(periodUnit),
      privateIpAddress = pulumi.Input.asOptionalInput<String>(privateIpAddress),
      ramRoleName = pulumi.Input.asOptionalInput<String>(ramRoleName),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      securityEnhancementStrategy = pulumi.Input.asOptionalInput<String>(securityEnhancementStrategy),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      spotDuration = pulumi.Input.asOptionalInput<String>(spotDuration),
      spotPriceLimit = pulumi.Input.asOptionalInput<double>(spotPriceLimit),
      spotStrategy = pulumi.Input.asOptionalInput<String>(spotStrategy),
      systemDisk = pulumi.Input.asOptionalInput<EcsLaunchTemplateSystemDisk>(systemDisk),
      systemDiskCategory = pulumi.Input.asOptionalInput<String>(systemDiskCategory),
      systemDiskDescription = pulumi.Input.asOptionalInput<String>(systemDiskDescription),
      systemDiskName = pulumi.Input.asOptionalInput<String>(systemDiskName),
      systemDiskSize = pulumi.Input.asOptionalInput<int>(systemDiskSize),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      templateResourceGroupId = pulumi.Input.asOptionalInput<String>(templateResourceGroupId),
      templateTags = pulumi.Input.asOptionalInput<Map<String, String>>(templateTags),
      updateDefaultVersionNumber = pulumi.Input.asOptionalInput<bool>(updateDefaultVersionNumber),
      userData = pulumi.Input.asOptionalInput<String>(userData),
      userdata = pulumi.Input.asOptionalInput<String>(userdata),
      versionDescription = pulumi.Input.asOptionalInput<String>(versionDescription),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      'latestVersionNumber': ?latestVersionNumber,
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

  factory EcsLaunchTemplateState.fromMap(Map<String, dynamic> map) {
    return EcsLaunchTemplateState(
      autoReleaseTime: map['autoReleaseTime'] == null ? null : pulumi.Output.create<String>(map['autoReleaseTime'] as String),
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<bool>(map['autoRenew'] as bool),
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : pulumi.Output.create<int>(map['autoRenewPeriod'] as int),
      dataDisks: map['dataDisks'] == null ? null : pulumi.Output.create<List<EcsLaunchTemplateDataDisk>>(pulumi.Input.decodeList<EcsLaunchTemplateDataDisk>(map['dataDisks'], (value) => EcsLaunchTemplateDataDisk.fromMap((value as Map).cast<String, dynamic>()))),
      defaultVersionNumber: map['defaultVersionNumber'] == null ? null : pulumi.Output.create<int>(map['defaultVersionNumber'] as int),
      deploymentSetId: map['deploymentSetId'] == null ? null : pulumi.Output.create<String>(map['deploymentSetId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enableVmOsConfig: map['enableVmOsConfig'] == null ? null : pulumi.Output.create<bool>(map['enableVmOsConfig'] as bool),
      hostName: map['hostName'] == null ? null : pulumi.Output.create<String>(map['hostName'] as String),
      httpEndpoint: map['httpEndpoint'] == null ? null : pulumi.Output.create<String>(map['httpEndpoint'] as String),
      httpPutResponseHopLimit: map['httpPutResponseHopLimit'] == null ? null : pulumi.Output.create<int>(map['httpPutResponseHopLimit'] as int),
      httpTokens: map['httpTokens'] == null ? null : pulumi.Output.create<String>(map['httpTokens'] as String),
      imageId: map['imageId'] == null ? null : pulumi.Output.create<String>(map['imageId'] as String),
      imageOptions: map['imageOptions'] == null ? null : pulumi.Output.create<EcsLaunchTemplateImageOptions>(EcsLaunchTemplateImageOptions.fromMap((map['imageOptions'] as Map).cast<String, dynamic>())),
      imageOwnerAlias: map['imageOwnerAlias'] == null ? null : pulumi.Output.create<String>(map['imageOwnerAlias'] as String),
      instanceChargeType: map['instanceChargeType'] == null ? null : pulumi.Output.create<String>(map['instanceChargeType'] as String),
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      internetChargeType: map['internetChargeType'] == null ? null : pulumi.Output.create<String>(map['internetChargeType'] as String),
      internetMaxBandwidthIn: map['internetMaxBandwidthIn'] == null ? null : pulumi.Output.create<int>(map['internetMaxBandwidthIn'] as int),
      internetMaxBandwidthOut: map['internetMaxBandwidthOut'] == null ? null : pulumi.Output.create<int>(map['internetMaxBandwidthOut'] as int),
      ioOptimized: map['ioOptimized'] == null ? null : pulumi.Output.create<String>(map['ioOptimized'] as String),
      keyPairName: map['keyPairName'] == null ? null : pulumi.Output.create<String>(map['keyPairName'] as String),
      latestVersionNumber: map['latestVersionNumber'] == null ? null : pulumi.Output.create<int>(map['latestVersionNumber'] as int),
      launchTemplateName: map['launchTemplateName'] == null ? null : pulumi.Output.create<String>(map['launchTemplateName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkInterfaces: map['networkInterfaces'] == null ? null : pulumi.Output.create<EcsLaunchTemplateNetworkInterfaces>(EcsLaunchTemplateNetworkInterfaces.fromMap((map['networkInterfaces'] as Map).cast<String, dynamic>())),
      networkType: map['networkType'] == null ? null : pulumi.Output.create<String>(map['networkType'] as String),
      passwordInherit: map['passwordInherit'] == null ? null : pulumi.Output.create<bool>(map['passwordInherit'] as bool),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      periodUnit: map['periodUnit'] == null ? null : pulumi.Output.create<String>(map['periodUnit'] as String),
      privateIpAddress: map['privateIpAddress'] == null ? null : pulumi.Output.create<String>(map['privateIpAddress'] as String),
      ramRoleName: map['ramRoleName'] == null ? null : pulumi.Output.create<String>(map['ramRoleName'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      securityEnhancementStrategy: map['securityEnhancementStrategy'] == null ? null : pulumi.Output.create<String>(map['securityEnhancementStrategy'] as String),
      securityGroupId: map['securityGroupId'] == null ? null : pulumi.Output.create<String>(map['securityGroupId'] as String),
      securityGroupIds: map['securityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      spotDuration: map['spotDuration'] == null ? null : pulumi.Output.create<String>(map['spotDuration'] as String),
      spotPriceLimit: map['spotPriceLimit'] == null ? null : pulumi.Output.create<double>(map['spotPriceLimit'] as double),
      spotStrategy: map['spotStrategy'] == null ? null : pulumi.Output.create<String>(map['spotStrategy'] as String),
      systemDisk: map['systemDisk'] == null ? null : pulumi.Output.create<EcsLaunchTemplateSystemDisk>(EcsLaunchTemplateSystemDisk.fromMap((map['systemDisk'] as Map).cast<String, dynamic>())),
      systemDiskCategory: map['systemDiskCategory'] == null ? null : pulumi.Output.create<String>(map['systemDiskCategory'] as String),
      systemDiskDescription: map['systemDiskDescription'] == null ? null : pulumi.Output.create<String>(map['systemDiskDescription'] as String),
      systemDiskName: map['systemDiskName'] == null ? null : pulumi.Output.create<String>(map['systemDiskName'] as String),
      systemDiskSize: map['systemDiskSize'] == null ? null : pulumi.Output.create<int>(map['systemDiskSize'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      templateResourceGroupId: map['templateResourceGroupId'] == null ? null : pulumi.Output.create<String>(map['templateResourceGroupId'] as String),
      templateTags: map['templateTags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['templateTags'] as Map).cast<String, String>()),
      updateDefaultVersionNumber: map['updateDefaultVersionNumber'] == null ? null : pulumi.Output.create<bool>(map['updateDefaultVersionNumber'] as bool),
      userData: map['userData'] == null ? null : pulumi.Output.create<String>(map['userData'] as String),
      userdata: map['userdata'] == null ? null : pulumi.Output.create<String>(map['userdata'] as String),
      versionDescription: map['versionDescription'] == null ? null : pulumi.Output.create<String>(map['versionDescription'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

