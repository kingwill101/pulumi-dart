// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'launch_template_data_disk.dart';
import 'launch_template_image_options.dart';
import 'launch_template_network_interfaces.dart';
import 'launch_template_system_disk.dart';

/// {@template pulumi_ecs_launch_template_launch_template_args_doc}
/// The set of arguments for LaunchTemplate.
/// {@endtemplate}
/// {@macro pulumi_ecs_launch_template_launch_template_args_doc}
class LaunchTemplateArgs {
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

  /// Creates a new [LaunchTemplateArgs].
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
  const LaunchTemplateArgs({
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

  factory LaunchTemplateArgs.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateArgs(
      autoReleaseTime: (() { final guardedValue = map['autoReleaseTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoRenewPeriod: (() { final guardedValue = map['autoRenewPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dataDisks: (() { final guardedValue = map['dataDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LaunchTemplateDataDisk>(guardedValue, (value) => LaunchTemplateDataDisk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultVersionNumber: (() { final guardedValue = map['defaultVersionNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      deploymentSetId: (() { final guardedValue = map['deploymentSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableVmOsConfig: (() { final guardedValue = map['enableVmOsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpEndpoint: (() { final guardedValue = map['httpEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpPutResponseHopLimit: (() { final guardedValue = map['httpPutResponseHopLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      httpTokens: (() { final guardedValue = map['httpTokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageOptions: (() { final guardedValue = map['imageOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LaunchTemplateImageOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageOwnerAlias: (() { final guardedValue = map['imageOwnerAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceChargeType: (() { final guardedValue = map['instanceChargeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceName: (() { final guardedValue = map['instanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internetChargeType: (() { final guardedValue = map['internetChargeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internetMaxBandwidthIn: (() { final guardedValue = map['internetMaxBandwidthIn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      internetMaxBandwidthOut: (() { final guardedValue = map['internetMaxBandwidthOut']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ioOptimized: (() { final guardedValue = map['ioOptimized']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyPairName: (() { final guardedValue = map['keyPairName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      launchTemplateName: (() { final guardedValue = map['launchTemplateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LaunchTemplateNetworkInterfaces.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordInherit: (() { final guardedValue = map['passwordInherit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      periodUnit: (() { final guardedValue = map['periodUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ramRoleName: (() { final guardedValue = map['ramRoleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityEnhancementStrategy: (() { final guardedValue = map['securityEnhancementStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupId: (() { final guardedValue = map['securityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      spotDuration: (() { final guardedValue = map['spotDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spotPriceLimit: (() { final guardedValue = map['spotPriceLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      spotStrategy: (() { final guardedValue = map['spotStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemDisk: (() { final guardedValue = map['systemDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LaunchTemplateSystemDisk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      systemDiskCategory: (() { final guardedValue = map['systemDiskCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemDiskDescription: (() { final guardedValue = map['systemDiskDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemDiskName: (() { final guardedValue = map['systemDiskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemDiskSize: (() { final guardedValue = map['systemDiskSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      templateResourceGroupId: (() { final guardedValue = map['templateResourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateTags: (() { final guardedValue = map['templateTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      updateDefaultVersionNumber: (() { final guardedValue = map['updateDefaultVersionNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      userData: (() { final guardedValue = map['userData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userdata: (() { final guardedValue = map['userdata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionDescription: (() { final guardedValue = map['versionDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

