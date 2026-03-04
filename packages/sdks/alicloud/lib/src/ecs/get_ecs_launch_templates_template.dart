// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ecs_launch_templates_template_data_disk.dart';
import 'get_ecs_launch_templates_template_network_interface.dart';
import 'get_ecs_launch_templates_template_system_disk.dart';

class GetEcsLaunchTemplatesTemplate {
  /// The automatic release time of the instance.
  final pulumi.Input<String> autoReleaseTime;

  /// The ID of the Alibaba Cloud account that created the launch template.
  final pulumi.Input<String> createdBy;

  /// The list of data disks created with instance.
  final pulumi.Input<List<GetEcsLaunchTemplatesTemplateDataDisk>> dataDisks;

  /// The default version number of the launch template.
  final pulumi.Input<int> defaultVersionNumber;

  /// The ID of the deployment set.
  final pulumi.Input<String> deploymentSetId;

  /// System disk description.
  final pulumi.Input<String> description;

  /// Indicates whether the operating system configuration of the instance is enabled.
  final pulumi.Input<bool> enableVmOsConfig;

  /// The hostname of the instance.
  final pulumi.Input<String> hostName;

  /// Whether to enable access to instance metadata.
  final pulumi.Input<String> httpEndpoint;

  /// The HTTP PUT response hop limit required for instance metadata requests.
  final pulumi.Input<int> httpPutResponseHopLimit;

  /// Whether to use the hardened mode (IMDSv2) when accessing instance metadata.
  final pulumi.Input<String> httpTokens;

  /// The ID of the Launch Template.
  final pulumi.Input<String> id;

  /// The ID of the image.
  final pulumi.Input<String> imageId;

  /// The source of the image.
  final pulumi.Input<String> imageOwnerAlias;

  /// The billing method of the instance.
  final pulumi.Input<String> instanceChargeType;

  /// The name of the instance.
  final pulumi.Input<String> instanceName;

  /// The instance type of the instance.
  final pulumi.Input<String> instanceType;

  /// The billing method for network usage.
  final pulumi.Input<String> internetChargeType;

  /// The maximum inbound public bandwidth.
  final pulumi.Input<int> internetMaxBandwidthIn;

  /// The maximum outbound public bandwidth.
  final pulumi.Input<int> internetMaxBandwidthOut;

  /// Indicates whether the instance is I/O optimized.
  final pulumi.Input<String> ioOptimized;

  /// The name of the key pair.
  final pulumi.Input<String> keyPairName;

  /// The latest version number of the launch template.
  final pulumi.Input<int> latestVersionNumber;

  /// The ID of the Launch Template.
  final pulumi.Input<String> launchTemplateId;

  /// The name of the launch template.
  final pulumi.Input<String> launchTemplateName;

  /// The time when a version was added to or deleted from the launch template.
  final pulumi.Input<String> modifiedTime;

  /// The list of network interfaces created with instance.
  final pulumi.Input<List<GetEcsLaunchTemplatesTemplateNetworkInterface>>
  networkInterfaces;

  /// Network type of the instance.
  final pulumi.Input<String> networkType;

  /// Whether to use the password preset by the mirror.
  final pulumi.Input<bool> passwordInherit;

  /// The subscription period of the instance.
  final pulumi.Input<int> period;

  /// The private IP address of the instance.
  final pulumi.Input<String> privateIpAddress;

  /// The RAM role name of the instance.
  final pulumi.Input<String> ramRoleName;

  /// The ID of the resource group to which to assign the instance, Elastic Block Storage (EBS) device, and ENI.
  final pulumi.Input<String> resourceGroupId;

  /// Whether or not to activate the security enhancement feature and install network security software free of charge.
  final pulumi.Input<String> securityEnhancementStrategy;

  /// The security group ID must be one in the same VPC.
  final pulumi.Input<String> securityGroupId;

  /// The security group IDs.
  final pulumi.Input<List<String>> securityGroupIds;

  /// The protection period of the preemptible instance.
  final pulumi.Input<String> spotDuration;

  /// Sets the maximum hourly instance price.
  final pulumi.Input<double> spotPriceLimit;

  /// The spot strategy for a Pay-As-You-Go instance.
  final pulumi.Input<String> spotStrategy;

  /// The System Disk.
  final pulumi.Input<List<GetEcsLaunchTemplatesTemplateSystemDisk>> systemDisks;

  /// The tags of the launch template.
  final pulumi.Input<Map<String, String>> templateTags;

  /// The user data of the instance.
  final pulumi.Input<String> userData;

  /// The Version Description.
  final pulumi.Input<String> versionDescription;

  /// VpcId.
  final pulumi.Input<String> vpcId;

  /// The vSwitch ID for ENI. The instance must be in the same zone of the same VPC network as the ENI, but they may belong to different VSwitches.
  final pulumi.Input<String> vswitchId;

  /// The Zone Id.
  final pulumi.Input<String> zoneId;

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
      'dataDisks':
          pulumi.Input.mapInputValue<
            List<GetEcsLaunchTemplatesTemplateDataDisk>,
            List<Map<String, dynamic>>
          >(
            dataDisks,
            (value) =>
                pulumi.Input.encodeList<
                  GetEcsLaunchTemplatesTemplateDataDisk,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      'networkInterfaces':
          pulumi.Input.mapInputValue<
            List<GetEcsLaunchTemplatesTemplateNetworkInterface>,
            List<Map<String, dynamic>>
          >(
            networkInterfaces,
            (value) =>
                pulumi.Input.encodeList<
                  GetEcsLaunchTemplatesTemplateNetworkInterface,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      'systemDisks':
          pulumi.Input.mapInputValue<
            List<GetEcsLaunchTemplatesTemplateSystemDisk>,
            List<Map<String, dynamic>>
          >(
            systemDisks,
            (value) =>
                pulumi.Input.encodeList<
                  GetEcsLaunchTemplatesTemplateSystemDisk,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      autoReleaseTime: pulumi.Input.fromValue(map['autoReleaseTime'] as String),
      createdBy: pulumi.Input.fromValue(map['createdBy'] as String),
      dataDisks: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetEcsLaunchTemplatesTemplateDataDisk>(
          map['dataDisks']!,
          (value) => GetEcsLaunchTemplatesTemplateDataDisk.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      defaultVersionNumber: pulumi.Input.fromValue(
        map['defaultVersionNumber'] as int,
      ),
      deploymentSetId: pulumi.Input.fromValue(map['deploymentSetId'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      enableVmOsConfig: pulumi.Input.fromValue(map['enableVmOsConfig'] as bool),
      hostName: pulumi.Input.fromValue(map['hostName'] as String),
      httpEndpoint: pulumi.Input.fromValue(map['httpEndpoint'] as String),
      httpPutResponseHopLimit: pulumi.Input.fromValue(
        map['httpPutResponseHopLimit'] as int,
      ),
      httpTokens: pulumi.Input.fromValue(map['httpTokens'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      imageId: pulumi.Input.fromValue(map['imageId'] as String),
      imageOwnerAlias: pulumi.Input.fromValue(map['imageOwnerAlias'] as String),
      instanceChargeType: pulumi.Input.fromValue(
        map['instanceChargeType'] as String,
      ),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      internetChargeType: pulumi.Input.fromValue(
        map['internetChargeType'] as String,
      ),
      internetMaxBandwidthIn: pulumi.Input.fromValue(
        map['internetMaxBandwidthIn'] as int,
      ),
      internetMaxBandwidthOut: pulumi.Input.fromValue(
        map['internetMaxBandwidthOut'] as int,
      ),
      ioOptimized: pulumi.Input.fromValue(map['ioOptimized'] as String),
      keyPairName: pulumi.Input.fromValue(map['keyPairName'] as String),
      latestVersionNumber: pulumi.Input.fromValue(
        map['latestVersionNumber'] as int,
      ),
      launchTemplateId: pulumi.Input.fromValue(
        map['launchTemplateId'] as String,
      ),
      launchTemplateName: pulumi.Input.fromValue(
        map['launchTemplateName'] as String,
      ),
      modifiedTime: pulumi.Input.fromValue(map['modifiedTime'] as String),
      networkInterfaces: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetEcsLaunchTemplatesTemplateNetworkInterface>(
          map['networkInterfaces']!,
          (value) => GetEcsLaunchTemplatesTemplateNetworkInterface.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      networkType: pulumi.Input.fromValue(map['networkType'] as String),
      passwordInherit: pulumi.Input.fromValue(map['passwordInherit'] as bool),
      period: pulumi.Input.fromValue(map['period'] as int),
      privateIpAddress: pulumi.Input.fromValue(
        map['privateIpAddress'] as String,
      ),
      ramRoleName: pulumi.Input.fromValue(map['ramRoleName'] as String),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      securityEnhancementStrategy: pulumi.Input.fromValue(
        map['securityEnhancementStrategy'] as String,
      ),
      securityGroupId: pulumi.Input.fromValue(map['securityGroupId'] as String),
      securityGroupIds: pulumi.Input.fromValue(
        (map['securityGroupIds'] as List).cast<String>(),
      ),
      spotDuration: pulumi.Input.fromValue(map['spotDuration'] as String),
      spotPriceLimit: pulumi.Input.fromValue(map['spotPriceLimit'] as double),
      spotStrategy: pulumi.Input.fromValue(map['spotStrategy'] as String),
      systemDisks: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetEcsLaunchTemplatesTemplateSystemDisk>(
          map['systemDisks']!,
          (value) => GetEcsLaunchTemplatesTemplateSystemDisk.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      templateTags: pulumi.Input.fromValue(
        (map['templateTags'] as Map).cast<String, String>(),
      ),
      userData: pulumi.Input.fromValue(map['userData'] as String),
      versionDescription: pulumi.Input.fromValue(
        map['versionDescription'] as String,
      ),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
