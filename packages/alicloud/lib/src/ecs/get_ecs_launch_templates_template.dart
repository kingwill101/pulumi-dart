// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ecs_launch_templates_template_data_disk.dart';
import 'get_ecs_launch_templates_template_network_interface.dart';
import 'get_ecs_launch_templates_template_system_disk.dart';

class GetEcsLaunchTemplatesTemplate {
  /// The automatic release time of the instance.
  final String autoReleaseTime;
  /// The ID of the Alibaba Cloud account that created the launch template.
  final String createdBy;
  /// The list of data disks created with instance.
  final List<GetEcsLaunchTemplatesTemplateDataDisk> dataDisks;
  /// The default version number of the launch template.
  final int defaultVersionNumber;
  /// The ID of the deployment set.
  final String deploymentSetId;
  /// System disk description.
  final String description;
  /// Indicates whether the operating system configuration of the instance is enabled.
  final bool enableVmOsConfig;
  /// The hostname of the instance.
  final String hostName;
  /// Whether to enable access to instance metadata.
  final String httpEndpoint;
  /// The HTTP PUT response hop limit required for instance metadata requests.
  final int httpPutResponseHopLimit;
  /// Whether to use the hardened mode (IMDSv2) when accessing instance metadata.
  final String httpTokens;
  /// The ID of the Launch Template.
  final String id;
  /// The ID of the image.
  final String imageId;
  /// The source of the image.
  final String imageOwnerAlias;
  /// The billing method of the instance.
  final String instanceChargeType;
  /// The name of the instance.
  final String instanceName;
  /// The instance type of the instance.
  final String instanceType;
  /// The billing method for network usage.
  final String internetChargeType;
  /// The maximum inbound public bandwidth.
  final int internetMaxBandwidthIn;
  /// The maximum outbound public bandwidth.
  final int internetMaxBandwidthOut;
  /// Indicates whether the instance is I/O optimized.
  final String ioOptimized;
  /// The name of the key pair.
  final String keyPairName;
  /// The latest version number of the launch template.
  final int latestVersionNumber;
  /// The ID of the Launch Template.
  final String launchTemplateId;
  /// The name of the launch template.
  final String launchTemplateName;
  /// The time when a version was added to or deleted from the launch template.
  final String modifiedTime;
  /// The list of network interfaces created with instance.
  final List<GetEcsLaunchTemplatesTemplateNetworkInterface> networkInterfaces;
  /// Network type of the instance.
  final String networkType;
  /// Whether to use the password preset by the mirror.
  final bool passwordInherit;
  /// The subscription period of the instance.
  final int period;
  /// The private IP address of the instance.
  final String privateIpAddress;
  /// The RAM role name of the instance.
  final String ramRoleName;
  /// The ID of the resource group to which to assign the instance, Elastic Block Storage (EBS) device, and ENI.
  final String resourceGroupId;
  /// Whether or not to activate the security enhancement feature and install network security software free of charge.
  final String securityEnhancementStrategy;
  /// The security group ID must be one in the same VPC.
  final String securityGroupId;
  /// The security group IDs.
  final List<String> securityGroupIds;
  /// The protection period of the preemptible instance.
  final String spotDuration;
  /// Sets the maximum hourly instance price.
  final double spotPriceLimit;
  /// The spot strategy for a Pay-As-You-Go instance.
  final String spotStrategy;
  /// The System Disk.
  final List<GetEcsLaunchTemplatesTemplateSystemDisk> systemDisks;
  /// The tags of the launch template.
  final Map<String, String> templateTags;
  /// The user data of the instance.
  final String userData;
  /// The Version Description.
  final String versionDescription;
  /// VpcId.
  final String vpcId;
  /// The vSwitch ID for ENI. The instance must be in the same zone of the same VPC network as the ENI, but they may belong to different VSwitches.
  final String vswitchId;
  /// The Zone Id.
  final String zoneId;

  /// Creates a new [GetEcsLaunchTemplatesTemplate].
  /// [autoReleaseTime] The automatic release time of the instance.
  /// [createdBy] The ID of the Alibaba Cloud account that created the launch template.
  /// [dataDisks] The list of data disks created with instance.
  /// [defaultVersionNumber] The default version number of the launch template.
  /// [deploymentSetId] The ID of the deployment set.
  /// [description] System disk description.
  /// [enableVmOsConfig] Indicates whether the operating system configuration of the instance is enabled.
  /// [hostName] The hostname of the instance.
  /// [httpEndpoint] Whether to enable access to instance metadata.
  /// [httpPutResponseHopLimit] The HTTP PUT response hop limit required for instance metadata requests.
  /// [httpTokens] Whether to use the hardened mode (IMDSv2) when accessing instance metadata.
  /// [id] The ID of the Launch Template.
  /// [imageId] The ID of the image.
  /// [imageOwnerAlias] The source of the image.
  /// [instanceChargeType] The billing method of the instance.
  /// [instanceName] The name of the instance.
  /// [instanceType] The instance type of the instance.
  /// [internetChargeType] The billing method for network usage.
  /// [internetMaxBandwidthIn] The maximum inbound public bandwidth.
  /// [internetMaxBandwidthOut] The maximum outbound public bandwidth.
  /// [ioOptimized] Indicates whether the instance is I/O optimized.
  /// [keyPairName] The name of the key pair.
  /// [latestVersionNumber] The latest version number of the launch template.
  /// [launchTemplateId] The ID of the Launch Template.
  /// [launchTemplateName] The name of the launch template.
  /// [modifiedTime] The time when a version was added to or deleted from the launch template.
  /// [networkInterfaces] The list of network interfaces created with instance.
  /// [networkType] Network type of the instance.
  /// [passwordInherit] Whether to use the password preset by the mirror.
  /// [period] The subscription period of the instance.
  /// [privateIpAddress] The private IP address of the instance.
  /// [ramRoleName] The RAM role name of the instance.
  /// [resourceGroupId] The ID of the resource group to which to assign the instance, Elastic Block Storage (EBS) device, and ENI.
  /// [securityEnhancementStrategy] Whether or not to activate the security enhancement feature and install network security software free of charge.
  /// [securityGroupId] The security group ID must be one in the same VPC.
  /// [securityGroupIds] The security group IDs.
  /// [spotDuration] The protection period of the preemptible instance.
  /// [spotPriceLimit] Sets the maximum hourly instance price.
  /// [spotStrategy] The spot strategy for a Pay-As-You-Go instance.
  /// [systemDisks] The System Disk.
  /// [templateTags] The tags of the launch template.
  /// [userData] The user data of the instance.
  /// [versionDescription] The Version Description.
  /// [vpcId] VpcId.
  /// [vswitchId] The vSwitch ID for ENI. The instance must be in the same zone of the same VPC network as the ENI, but they may belong to different VSwitches.
  /// [zoneId] The Zone Id.
  GetEcsLaunchTemplatesTemplate({
    required this.autoReleaseTime,
    required this.createdBy,
    required this.dataDisks,
    required this.defaultVersionNumber,
    required this.deploymentSetId,
    required this.description,
    required this.enableVmOsConfig,
    required this.hostName,
    required this.httpEndpoint,
    required this.httpPutResponseHopLimit,
    required this.httpTokens,
    required this.id,
    required this.imageId,
    required this.imageOwnerAlias,
    required this.instanceChargeType,
    required this.instanceName,
    required this.instanceType,
    required this.internetChargeType,
    required this.internetMaxBandwidthIn,
    required this.internetMaxBandwidthOut,
    required this.ioOptimized,
    required this.keyPairName,
    required this.latestVersionNumber,
    required this.launchTemplateId,
    required this.launchTemplateName,
    required this.modifiedTime,
    required this.networkInterfaces,
    required this.networkType,
    required this.passwordInherit,
    required this.period,
    required this.privateIpAddress,
    required this.ramRoleName,
    required this.resourceGroupId,
    required this.securityEnhancementStrategy,
    required this.securityGroupId,
    required this.securityGroupIds,
    required this.spotDuration,
    required this.spotPriceLimit,
    required this.spotStrategy,
    required this.systemDisks,
    required this.templateTags,
    required this.userData,
    required this.versionDescription,
    required this.vpcId,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoReleaseTime': autoReleaseTime,
      'createdBy': createdBy,
      'dataDisks': pulumi.Input.encodeList<GetEcsLaunchTemplatesTemplateDataDisk, Map<String, dynamic>>(dataDisks, (value) => value.toMap()),
      'defaultVersionNumber': defaultVersionNumber,
      'deploymentSetId': deploymentSetId,
      'description': description,
      'enableVmOsConfig': enableVmOsConfig,
      'hostName': hostName,
      'httpEndpoint': httpEndpoint,
      'httpPutResponseHopLimit': httpPutResponseHopLimit,
      'httpTokens': httpTokens,
      'id': id,
      'imageId': imageId,
      'imageOwnerAlias': imageOwnerAlias,
      'instanceChargeType': instanceChargeType,
      'instanceName': instanceName,
      'instanceType': instanceType,
      'internetChargeType': internetChargeType,
      'internetMaxBandwidthIn': internetMaxBandwidthIn,
      'internetMaxBandwidthOut': internetMaxBandwidthOut,
      'ioOptimized': ioOptimized,
      'keyPairName': keyPairName,
      'latestVersionNumber': latestVersionNumber,
      'launchTemplateId': launchTemplateId,
      'launchTemplateName': launchTemplateName,
      'modifiedTime': modifiedTime,
      'networkInterfaces': pulumi.Input.encodeList<GetEcsLaunchTemplatesTemplateNetworkInterface, Map<String, dynamic>>(networkInterfaces, (value) => value.toMap()),
      'networkType': networkType,
      'passwordInherit': passwordInherit,
      'period': period,
      'privateIpAddress': privateIpAddress,
      'ramRoleName': ramRoleName,
      'resourceGroupId': resourceGroupId,
      'securityEnhancementStrategy': securityEnhancementStrategy,
      'securityGroupId': securityGroupId,
      'securityGroupIds': securityGroupIds,
      'spotDuration': spotDuration,
      'spotPriceLimit': spotPriceLimit,
      'spotStrategy': spotStrategy,
      'systemDisks': pulumi.Input.encodeList<GetEcsLaunchTemplatesTemplateSystemDisk, Map<String, dynamic>>(systemDisks, (value) => value.toMap()),
      'templateTags': templateTags,
      'userData': userData,
      'versionDescription': versionDescription,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory GetEcsLaunchTemplatesTemplate.fromMap(Map<String, dynamic> map) {
    return GetEcsLaunchTemplatesTemplate(
      autoReleaseTime: map['autoReleaseTime'] as String,
      createdBy: map['createdBy'] as String,
      dataDisks: pulumi.Input.decodeList<GetEcsLaunchTemplatesTemplateDataDisk>(map['dataDisks'], (value) => GetEcsLaunchTemplatesTemplateDataDisk.fromMap((value as Map).cast<String, dynamic>())),
      defaultVersionNumber: map['defaultVersionNumber'] as int,
      deploymentSetId: map['deploymentSetId'] as String,
      description: map['description'] as String,
      enableVmOsConfig: map['enableVmOsConfig'] as bool,
      hostName: map['hostName'] as String,
      httpEndpoint: map['httpEndpoint'] as String,
      httpPutResponseHopLimit: map['httpPutResponseHopLimit'] as int,
      httpTokens: map['httpTokens'] as String,
      id: map['id'] as String,
      imageId: map['imageId'] as String,
      imageOwnerAlias: map['imageOwnerAlias'] as String,
      instanceChargeType: map['instanceChargeType'] as String,
      instanceName: map['instanceName'] as String,
      instanceType: map['instanceType'] as String,
      internetChargeType: map['internetChargeType'] as String,
      internetMaxBandwidthIn: map['internetMaxBandwidthIn'] as int,
      internetMaxBandwidthOut: map['internetMaxBandwidthOut'] as int,
      ioOptimized: map['ioOptimized'] as String,
      keyPairName: map['keyPairName'] as String,
      latestVersionNumber: map['latestVersionNumber'] as int,
      launchTemplateId: map['launchTemplateId'] as String,
      launchTemplateName: map['launchTemplateName'] as String,
      modifiedTime: map['modifiedTime'] as String,
      networkInterfaces: pulumi.Input.decodeList<GetEcsLaunchTemplatesTemplateNetworkInterface>(map['networkInterfaces'], (value) => GetEcsLaunchTemplatesTemplateNetworkInterface.fromMap((value as Map).cast<String, dynamic>())),
      networkType: map['networkType'] as String,
      passwordInherit: map['passwordInherit'] as bool,
      period: map['period'] as int,
      privateIpAddress: map['privateIpAddress'] as String,
      ramRoleName: map['ramRoleName'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      securityEnhancementStrategy: map['securityEnhancementStrategy'] as String,
      securityGroupId: map['securityGroupId'] as String,
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      spotDuration: map['spotDuration'] as String,
      spotPriceLimit: map['spotPriceLimit'] as double,
      spotStrategy: map['spotStrategy'] as String,
      systemDisks: pulumi.Input.decodeList<GetEcsLaunchTemplatesTemplateSystemDisk>(map['systemDisks'], (value) => GetEcsLaunchTemplatesTemplateSystemDisk.fromMap((value as Map).cast<String, dynamic>())),
      templateTags: (map['templateTags'] as Map).cast<String, String>(),
      userData: map['userData'] as String,
      versionDescription: map['versionDescription'] as String,
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

