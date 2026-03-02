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
    this.latestVersionNumber,
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
      autoReleaseTime: map['autoReleaseTime'] == null ? null : (map['autoReleaseTime']! as String).input(),
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew']! as bool).input(),
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : (map['autoRenewPeriod']! as int).input(),
      dataDisks: map['dataDisks'] == null ? null : (pulumi.Input.decodeList<LaunchTemplateDataDisk>(map['dataDisks']!, (value) => LaunchTemplateDataDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      defaultVersionNumber: map['defaultVersionNumber'] == null ? null : (map['defaultVersionNumber']! as int).input(),
      deploymentSetId: map['deploymentSetId'] == null ? null : (map['deploymentSetId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      enableVmOsConfig: map['enableVmOsConfig'] == null ? null : (map['enableVmOsConfig']! as bool).input(),
      hostName: map['hostName'] == null ? null : (map['hostName']! as String).input(),
      httpEndpoint: map['httpEndpoint'] == null ? null : (map['httpEndpoint']! as String).input(),
      httpPutResponseHopLimit: map['httpPutResponseHopLimit'] == null ? null : (map['httpPutResponseHopLimit']! as int).input(),
      httpTokens: map['httpTokens'] == null ? null : (map['httpTokens']! as String).input(),
      imageId: map['imageId'] == null ? null : (map['imageId']! as String).input(),
      imageOptions: map['imageOptions'] == null ? null : (LaunchTemplateImageOptions.fromMap((map['imageOptions']! as Map).cast<String, dynamic>())).input(),
      imageOwnerAlias: map['imageOwnerAlias'] == null ? null : (map['imageOwnerAlias']! as String).input(),
      instanceChargeType: map['instanceChargeType'] == null ? null : (map['instanceChargeType']! as String).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName']! as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType']! as String).input(),
      internetChargeType: map['internetChargeType'] == null ? null : (map['internetChargeType']! as String).input(),
      internetMaxBandwidthIn: map['internetMaxBandwidthIn'] == null ? null : (map['internetMaxBandwidthIn']! as int).input(),
      internetMaxBandwidthOut: map['internetMaxBandwidthOut'] == null ? null : (map['internetMaxBandwidthOut']! as int).input(),
      ioOptimized: map['ioOptimized'] == null ? null : (map['ioOptimized']! as String).input(),
      keyPairName: map['keyPairName'] == null ? null : (map['keyPairName']! as String).input(),
      latestVersionNumber: map['latestVersionNumber'] == null ? null : (map['latestVersionNumber']! as int).input(),
      launchTemplateName: map['launchTemplateName'] == null ? null : (map['launchTemplateName']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkInterfaces: map['networkInterfaces'] == null ? null : (LaunchTemplateNetworkInterfaces.fromMap((map['networkInterfaces']! as Map).cast<String, dynamic>())).input(),
      networkType: map['networkType'] == null ? null : (map['networkType']! as String).input(),
      passwordInherit: map['passwordInherit'] == null ? null : (map['passwordInherit']! as bool).input(),
      period: map['period'] == null ? null : (map['period']! as int).input(),
      periodUnit: map['periodUnit'] == null ? null : (map['periodUnit']! as String).input(),
      privateIpAddress: map['privateIpAddress'] == null ? null : (map['privateIpAddress']! as String).input(),
      ramRoleName: map['ramRoleName'] == null ? null : (map['ramRoleName']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      securityEnhancementStrategy: map['securityEnhancementStrategy'] == null ? null : (map['securityEnhancementStrategy']! as String).input(),
      securityGroupId: map['securityGroupId'] == null ? null : (map['securityGroupId']! as String).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : ((map['securityGroupIds']! as List).cast<String>()).input(),
      spotDuration: map['spotDuration'] == null ? null : (map['spotDuration']! as String).input(),
      spotPriceLimit: map['spotPriceLimit'] == null ? null : (map['spotPriceLimit']! as double).input(),
      spotStrategy: map['spotStrategy'] == null ? null : (map['spotStrategy']! as String).input(),
      systemDisk: map['systemDisk'] == null ? null : (LaunchTemplateSystemDisk.fromMap((map['systemDisk']! as Map).cast<String, dynamic>())).input(),
      systemDiskCategory: map['systemDiskCategory'] == null ? null : (map['systemDiskCategory']! as String).input(),
      systemDiskDescription: map['systemDiskDescription'] == null ? null : (map['systemDiskDescription']! as String).input(),
      systemDiskName: map['systemDiskName'] == null ? null : (map['systemDiskName']! as String).input(),
      systemDiskSize: map['systemDiskSize'] == null ? null : (map['systemDiskSize']! as int).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      templateResourceGroupId: map['templateResourceGroupId'] == null ? null : (map['templateResourceGroupId']! as String).input(),
      templateTags: map['templateTags'] == null ? null : ((map['templateTags']! as Map).cast<String, String>()).input(),
      updateDefaultVersionNumber: map['updateDefaultVersionNumber'] == null ? null : (map['updateDefaultVersionNumber']! as bool).input(),
      userData: map['userData'] == null ? null : (map['userData']! as String).input(),
      userdata: map['userdata'] == null ? null : (map['userdata']! as String).input(),
      versionDescription: map['versionDescription'] == null ? null : (map['versionDescription']! as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId']! as String).input(),
    );
  }
}

