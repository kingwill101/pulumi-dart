// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'launch_template_data_disk.dart';
import 'launch_template_image_options.dart';
import 'launch_template_network_interfaces.dart';
import 'launch_template_system_disk.dart';

/// Input properties used for looking up and filtering LaunchTemplate resources.
class LaunchTemplateState {
  /// Instance auto release time. The time is presented using the ISO8601 standard and in UTC time. The format is  YYYY-MM-DDTHH:MM:SSZ.
  final pulumi.Input<String>? autoReleaseTime;
  final pulumi.Input<bool>? autoRenew;
  final pulumi.Input<int>? autoRenewPeriod;
  /// The list of data disks created with instance.
  final pulumi.Input<List<LaunchTemplateDataDisk>>? dataDisks;
  final pulumi.Input<int>? defaultVersionNumber;
  final pulumi.Input<String>? deploymentSetId;
  /// Description of instance launch template version 1. It can be [2, 256] characters in length. It cannot start with "http://" or "https://". The default value is null.
  final pulumi.Input<String>? description;
  final pulumi.Input<bool>? enableVmOsConfig;
  /// Instance host name.It cannot start or end with a period (.) or a hyphen (-) and it cannot have two or more consecutive periods (.) or hyphens (-).For Windows: The host name can be [2, 15] characters in length. It can contain A-Z, a-z, numbers, periods (.), and hyphens (-). It cannot only contain numbers. For other operating systems: The host name can be [2, 64] characters in length. It can be segments separated by periods (.). It can contain A-Z, a-z, numbers, and hyphens (-).
  final pulumi.Input<String>? hostName;
  final pulumi.Input<String>? httpEndpoint;
  final pulumi.Input<int>? httpPutResponseHopLimit;
  final pulumi.Input<String>? httpTokens;
  /// Image ID.
  final pulumi.Input<String>? imageId;
  final pulumi.Input<LaunchTemplateImageOptions>? imageOptions;
  final pulumi.Input<String>? imageOwnerAlias;
  /// Billing methods. Optional values:
  /// - PrePaid: Monthly, or annual subscription. Make sure that your registered credit card is invalid or you have insufficient balance in your PayPal account. Otherwise, InvalidPayMethod error may occur.
  /// - PostPaid: Pay-As-You-Go.
  ///
  /// Default value: PostPaid.
  final pulumi.Input<String>? instanceChargeType;
  /// The name of the instance. The name is a string of 2 to 128 characters. It must begin with an English or a Chinese character. It can contain A-Z, a-z, Chinese characters, numbers, periods (.), colons (:), underscores (_), and hyphens (-).
  final pulumi.Input<String>? instanceName;
  /// Instance type. For more information, call resource_alicloud_instances to obtain the latest instance type list.
  final pulumi.Input<String>? instanceType;
  /// Internet bandwidth billing method. Optional values: `PayByTraffic` | `PayByBandwidth`.
  final pulumi.Input<String>? internetChargeType;
  /// The maximum inbound bandwidth from the Internet network, measured in Mbit/s. Value range: [1, 200].
  final pulumi.Input<int>? internetMaxBandwidthIn;
  /// Maximum outbound bandwidth from the Internet, its unit of measurement is Mbit/s. Value range: [0, 100].
  final pulumi.Input<int>? internetMaxBandwidthOut;
  /// Whether it is an I/O-optimized instance or not. Optional values:
  /// - none
  /// - optimized
  final pulumi.Input<String>? ioOptimized;
  /// The name of the key pair.
  /// - Ignore this parameter for Windows instances. It is null by default. Even if you enter this parameter, only the  Password content is used.
  /// - The password logon method for Linux instances is set to forbidden upon initialization.
  final pulumi.Input<String>? keyPairName;
  final pulumi.Input<int>? latestVersionNumber;
  final pulumi.Input<String>? launchTemplateName;
  /// Instance launch template name. Can contain [2, 128] characters in length. It must start with an English letter or Chinese, can contain numbers, periods (.), colons (:), underscores (_), and hyphens (-). It cannot start with "http://" or "https://".
  final pulumi.Input<String>? name;
  /// The list of network interfaces created with instance.
  final pulumi.Input<LaunchTemplateNetworkInterfaces>? networkInterfaces;
  /// Network type of the instance. Value options: `classic` | `vpc`.
  final pulumi.Input<String>? networkType;
  final pulumi.Input<bool>? passwordInherit;
  final pulumi.Input<int>? period;
  final pulumi.Input<String>? periodUnit;
  final pulumi.Input<String>? privateIpAddress;
  /// The RAM role name of the instance. You can use the RAM API ListRoles to query instance RAM role names.
  final pulumi.Input<String>? ramRoleName;
  final pulumi.Input<String>? resourceGroupId;
  /// Whether or not to activate the security enhancement feature and install network security software free of charge. Optional values: Active | Deactive.
  final pulumi.Input<String>? securityEnhancementStrategy;
  /// The security group ID.
  final pulumi.Input<String>? securityGroupId;
  final pulumi.Input<List<String>>? securityGroupIds;
  final pulumi.Input<String>? spotDuration;
  /// Sets the maximum hourly instance price. Supports up to three decimal places.
  final pulumi.Input<double>? spotPriceLimit;
  /// The spot strategy for a Pay-As-You-Go instance. This parameter is valid and required only when InstanceChargeType is set to PostPaid. Value range:
  /// - NoSpot: Normal Pay-As-You-Go instance.
  /// - SpotWithPriceLimit: Sets the maximum price for a spot instance.
  /// - SpotAsPriceGo: The system automatically calculates the price. The maximum value is the Pay-As-You-Go price.
  final pulumi.Input<String>? spotStrategy;
  final pulumi.Input<LaunchTemplateSystemDisk>? systemDisk;
  /// The category of the system disk. System disk type. Optional values:
  /// - cloud: Basic cloud disk.
  /// - cloud_efficiency: Ultra cloud disk.
  /// - cloud_ssd: SSD cloud Disks.
  /// - ephemeral_ssd: local SSD Disks
  /// - cloud_essd: ESSD cloud Disks.
  final pulumi.Input<String>? systemDiskCategory;
  /// System disk description. It cannot begin with http:// or https://.
  final pulumi.Input<String>? systemDiskDescription;
  /// System disk name. The name is a string of 2 to 128 characters. It must begin with an English or a Chinese character. It can contain A-Z, a-z, Chinese characters, numbers, periods (.), colons (:), underscores (_), and hyphens (-).
  final pulumi.Input<String>? systemDiskName;
  /// Size of the system disk, measured in GB. Value range: [20, 500].
  final pulumi.Input<int>? systemDiskSize;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<String>? templateResourceGroupId;
  final pulumi.Input<Map<String, String>>? templateTags;
  final pulumi.Input<bool>? updateDefaultVersionNumber;
  final pulumi.Input<String>? userData;
  /// User data of the instance, which is Base64-encoded. Size of the raw data cannot exceed 16 KB.
  final pulumi.Input<String>? userdata;
  final pulumi.Input<String>? versionDescription;
  final pulumi.Input<String>? vpcId;
  /// When creating a VPC-Connected instance, you must specify its VSwitch ID.
  final pulumi.Input<String>? vswitchId;
  /// The zone ID of the instance.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [LaunchTemplateState].
  /// [autoReleaseTime] Instance auto release time. The time is presented using the ISO8601 standard and in UTC time. The format is  YYYY-MM-DDTHH:MM:SSZ.
  /// [autoRenew] Optional.
  /// [autoRenewPeriod] Optional.
  /// [dataDisks] The list of data disks created with instance.
  /// [defaultVersionNumber] Optional.
  /// [deploymentSetId] Optional.
  /// [description] Description of instance launch template version 1. It can be [2, 256] characters in length. It cannot start with "http://" or "https://". The default value is null.
  /// [enableVmOsConfig] Optional.
  /// [hostName] Instance host name.It cannot start or end with a period (.) or a hyphen (-) and it cannot have two or more consecutive periods (.) or hyphens (-).For Windows: The host name can be [2, 15] characters in length. It can contain A-Z, a-z, numbers, periods (.), and hyphens (-). It cannot only contain numbers. For other operating systems: The host name can be [2, 64] characters in length. It can be segments separated by periods (.). It can contain A-Z, a-z, numbers, and hyphens (-).
  /// [httpEndpoint] Optional.
  /// [httpPutResponseHopLimit] Optional.
  /// [httpTokens] Optional.
  /// [imageId] Image ID.
  /// [imageOptions] Optional.
  /// [imageOwnerAlias] Optional.
  /// [instanceChargeType] Billing methods. Optional values:
  /// [instanceName] The name of the instance. The name is a string of 2 to 128 characters. It must begin with an English or a Chinese character. It can contain A-Z, a-z, Chinese characters, numbers, periods (.), colons (:), underscores (_), and hyphens (-).
  /// [instanceType] Instance type. For more information, call resource_alicloud_instances to obtain the latest instance type list.
  /// [internetChargeType] Internet bandwidth billing method. Optional values: `PayByTraffic` | `PayByBandwidth`.
  /// [internetMaxBandwidthIn] The maximum inbound bandwidth from the Internet network, measured in Mbit/s. Value range: [1, 200].
  /// [internetMaxBandwidthOut] Maximum outbound bandwidth from the Internet, its unit of measurement is Mbit/s. Value range: [0, 100].
  /// [ioOptimized] Whether it is an I/O-optimized instance or not. Optional values:
  /// [keyPairName] The name of the key pair.
  /// [latestVersionNumber] Optional.
  /// [launchTemplateName] Optional.
  /// [name] Instance launch template name. Can contain [2, 128] characters in length. It must start with an English letter or Chinese, can contain numbers, periods (.), colons (:), underscores (_), and hyphens (-). It cannot start with "http://" or "https://".
  /// [networkInterfaces] The list of network interfaces created with instance.
  /// [networkType] Network type of the instance. Value options: `classic` | `vpc`.
  /// [passwordInherit] Optional.
  /// [period] Optional.
  /// [periodUnit] Optional.
  /// [privateIpAddress] Optional.
  /// [ramRoleName] The RAM role name of the instance. You can use the RAM API ListRoles to query instance RAM role names.
  /// [resourceGroupId] Optional.
  /// [securityEnhancementStrategy] Whether or not to activate the security enhancement feature and install network security software free of charge. Optional values: Active | Deactive.
  /// [securityGroupId] The security group ID.
  /// [securityGroupIds] Optional.
  /// [spotDuration] Optional.
  /// [spotPriceLimit] Sets the maximum hourly instance price. Supports up to three decimal places.
  /// [spotStrategy] The spot strategy for a Pay-As-You-Go instance. This parameter is valid and required only when InstanceChargeType is set to PostPaid. Value range:
  /// [systemDisk] Optional.
  /// [systemDiskCategory] The category of the system disk. System disk type. Optional values:
  /// [systemDiskDescription] System disk description. It cannot begin with http:// or https://.
  /// [systemDiskName] System disk name. The name is a string of 2 to 128 characters. It must begin with an English or a Chinese character. It can contain A-Z, a-z, Chinese characters, numbers, periods (.), colons (:), underscores (_), and hyphens (-).
  /// [systemDiskSize] Size of the system disk, measured in GB. Value range: [20, 500].
  /// [tags] A mapping of tags to assign to the resource.
  /// [templateResourceGroupId] Optional.
  /// [templateTags] Optional.
  /// [updateDefaultVersionNumber] Optional.
  /// [userData] Optional.
  /// [userdata] User data of the instance, which is Base64-encoded. Size of the raw data cannot exceed 16 KB.
  /// [versionDescription] Optional.
  /// [vpcId] Optional.
  /// [vswitchId] When creating a VPC-Connected instance, you must specify its VSwitch ID.
  /// [zoneId] The zone ID of the instance.
  LaunchTemplateState({
    pulumi.Output<String>? autoReleaseTime,
    pulumi.Output<bool>? autoRenew,
    pulumi.Output<int>? autoRenewPeriod,
    pulumi.Output<List<LaunchTemplateDataDisk>>? dataDisks,
    pulumi.Output<int>? defaultVersionNumber,
    pulumi.Output<String>? deploymentSetId,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enableVmOsConfig,
    pulumi.Output<String>? hostName,
    pulumi.Output<String>? httpEndpoint,
    pulumi.Output<int>? httpPutResponseHopLimit,
    pulumi.Output<String>? httpTokens,
    pulumi.Output<String>? imageId,
    pulumi.Output<LaunchTemplateImageOptions>? imageOptions,
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
    pulumi.Output<LaunchTemplateNetworkInterfaces>? networkInterfaces,
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
    pulumi.Output<LaunchTemplateSystemDisk>? systemDisk,
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
      dataDisks = pulumi.Input.asOptionalInput<List<LaunchTemplateDataDisk>>(dataDisks),
      defaultVersionNumber = pulumi.Input.asOptionalInput<int>(defaultVersionNumber),
      deploymentSetId = pulumi.Input.asOptionalInput<String>(deploymentSetId),
      description = pulumi.Input.asOptionalInput<String>(description),
      enableVmOsConfig = pulumi.Input.asOptionalInput<bool>(enableVmOsConfig),
      hostName = pulumi.Input.asOptionalInput<String>(hostName),
      httpEndpoint = pulumi.Input.asOptionalInput<String>(httpEndpoint),
      httpPutResponseHopLimit = pulumi.Input.asOptionalInput<int>(httpPutResponseHopLimit),
      httpTokens = pulumi.Input.asOptionalInput<String>(httpTokens),
      imageId = pulumi.Input.asOptionalInput<String>(imageId),
      imageOptions = pulumi.Input.asOptionalInput<LaunchTemplateImageOptions>(imageOptions),
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
      networkInterfaces = pulumi.Input.asOptionalInput<LaunchTemplateNetworkInterfaces>(networkInterfaces),
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
      systemDisk = pulumi.Input.asOptionalInput<LaunchTemplateSystemDisk>(systemDisk),
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
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<LaunchTemplateDataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<LaunchTemplateDataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultVersionNumber': ?defaultVersionNumber,
      'deploymentSetId': ?deploymentSetId,
      'description': ?description,
      'enableVmOsConfig': ?enableVmOsConfig,
      'hostName': ?hostName,
      'httpEndpoint': ?httpEndpoint,
      'httpPutResponseHopLimit': ?httpPutResponseHopLimit,
      'httpTokens': ?httpTokens,
      'imageId': ?imageId,
      'imageOptions': ?pulumi.Input.mapOptionalInputValue<LaunchTemplateImageOptions, Map<String, dynamic>>(imageOptions, (value) => value.toMap()),
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
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<LaunchTemplateNetworkInterfaces, Map<String, dynamic>>(networkInterfaces, (value) => value.toMap()),
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
      'systemDisk': ?pulumi.Input.mapOptionalInputValue<LaunchTemplateSystemDisk, Map<String, dynamic>>(systemDisk, (value) => value.toMap()),
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

  factory LaunchTemplateState.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateState(
      autoReleaseTime: map['autoReleaseTime'] == null ? null : pulumi.Output.create<String>(map['autoReleaseTime'] as String),
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<bool>(map['autoRenew'] as bool),
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : pulumi.Output.create<int>(map['autoRenewPeriod'] as int),
      dataDisks: map['dataDisks'] == null ? null : pulumi.Output.create<List<LaunchTemplateDataDisk>>(pulumi.Input.decodeList<LaunchTemplateDataDisk>(map['dataDisks'], (value) => LaunchTemplateDataDisk.fromMap((value as Map).cast<String, dynamic>()))),
      defaultVersionNumber: map['defaultVersionNumber'] == null ? null : pulumi.Output.create<int>(map['defaultVersionNumber'] as int),
      deploymentSetId: map['deploymentSetId'] == null ? null : pulumi.Output.create<String>(map['deploymentSetId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enableVmOsConfig: map['enableVmOsConfig'] == null ? null : pulumi.Output.create<bool>(map['enableVmOsConfig'] as bool),
      hostName: map['hostName'] == null ? null : pulumi.Output.create<String>(map['hostName'] as String),
      httpEndpoint: map['httpEndpoint'] == null ? null : pulumi.Output.create<String>(map['httpEndpoint'] as String),
      httpPutResponseHopLimit: map['httpPutResponseHopLimit'] == null ? null : pulumi.Output.create<int>(map['httpPutResponseHopLimit'] as int),
      httpTokens: map['httpTokens'] == null ? null : pulumi.Output.create<String>(map['httpTokens'] as String),
      imageId: map['imageId'] == null ? null : pulumi.Output.create<String>(map['imageId'] as String),
      imageOptions: map['imageOptions'] == null ? null : pulumi.Output.create<LaunchTemplateImageOptions>(LaunchTemplateImageOptions.fromMap((map['imageOptions'] as Map).cast<String, dynamic>())),
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
      networkInterfaces: map['networkInterfaces'] == null ? null : pulumi.Output.create<LaunchTemplateNetworkInterfaces>(LaunchTemplateNetworkInterfaces.fromMap((map['networkInterfaces'] as Map).cast<String, dynamic>())),
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
      systemDisk: map['systemDisk'] == null ? null : pulumi.Output.create<LaunchTemplateSystemDisk>(LaunchTemplateSystemDisk.fromMap((map['systemDisk'] as Map).cast<String, dynamic>())),
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

