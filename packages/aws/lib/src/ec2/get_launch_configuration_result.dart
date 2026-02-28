// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_launch_configuration_ebs_block_device.dart';
import 'get_launch_configuration_ephemeral_block_device.dart';
import 'get_launch_configuration_metadata_option.dart';
import 'get_launch_configuration_root_block_device.dart';

/// Result data returned by getLaunchConfiguration.
class GetLaunchConfigurationResult {
  /// Amazon Resource Name of the launch configuration.
  final String arn;

  /// Whether a Public IP address is associated with the instance.
  final bool associatePublicIpAddress;

  /// EBS Block Devices attached to the instance.
  final List<GetLaunchConfigurationEbsBlockDevice> ebsBlockDevices;

  /// Whether the launched EC2 instance will be EBS-optimized.
  final bool ebsOptimized;

  /// Whether Detailed Monitoring is Enabled.
  final bool enableMonitoring;

  /// The Ephemeral volumes on the instance.
  final List<GetLaunchConfigurationEphemeralBlockDevice> ephemeralBlockDevices;

  /// The IAM Instance Profile to associate with launched instances.
  final String iamInstanceProfile;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// EC2 Image ID of the instance.
  final String imageId;

  /// Instance Type of the instance to launch.
  final String instanceType;

  /// Key Name that should be used for the instance.
  final String keyName;

  /// Metadata options for the instance.
  final List<GetLaunchConfigurationMetadataOption> metadataOptions;

  /// Name of the launch configuration.
  final String name;

  /// Tenancy of the instance.
  final String placementTenancy;
  final String region;

  /// Root Block Device of the instance.
  final List<GetLaunchConfigurationRootBlockDevice> rootBlockDevices;

  /// List of associated Security Group IDS.
  final List<String> securityGroups;

  /// Price to use for reserving Spot instances.
  final String spotPrice;

  /// User Data of the instance.
  final String userData;

  /// Creates a new [GetLaunchConfigurationResult].
  /// [arn] Amazon Resource Name of the launch configuration.
  /// [associatePublicIpAddress] Whether a Public IP address is associated with the instance.
  /// [ebsBlockDevices] EBS Block Devices attached to the instance.
  /// [ebsOptimized] Whether the launched EC2 instance will be EBS-optimized.
  /// [enableMonitoring] Whether Detailed Monitoring is Enabled.
  /// [ephemeralBlockDevices] The Ephemeral volumes on the instance.
  /// [iamInstanceProfile] The IAM Instance Profile to associate with launched instances.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageId] EC2 Image ID of the instance.
  /// [instanceType] Instance Type of the instance to launch.
  /// [keyName] Key Name that should be used for the instance.
  /// [metadataOptions] Metadata options for the instance.
  /// [name] Name of the launch configuration.
  /// [placementTenancy] Tenancy of the instance.
  /// [region] Required.
  /// [rootBlockDevices] Root Block Device of the instance.
  /// [securityGroups] List of associated Security Group IDS.
  /// [spotPrice] Price to use for reserving Spot instances.
  /// [userData] User Data of the instance.
  GetLaunchConfigurationResult({
    required this.arn,
    required this.associatePublicIpAddress,
    required this.ebsBlockDevices,
    required this.ebsOptimized,
    required this.enableMonitoring,
    required this.ephemeralBlockDevices,
    required this.iamInstanceProfile,
    required this.id,
    required this.imageId,
    required this.instanceType,
    required this.keyName,
    required this.metadataOptions,
    required this.name,
    required this.placementTenancy,
    required this.region,
    required this.rootBlockDevices,
    required this.securityGroups,
    required this.spotPrice,
    required this.userData,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['associatePublicIpAddress'] = associatePublicIpAddress;
    map['ebsBlockDevices'] = pulumi.Input.encodeList<
        GetLaunchConfigurationEbsBlockDevice,
        Map<String, dynamic>>(ebsBlockDevices, (value) => value.toMap());
    map['ebsOptimized'] = ebsOptimized;
    map['enableMonitoring'] = enableMonitoring;
    map['ephemeralBlockDevices'] = pulumi.Input.encodeList<
        GetLaunchConfigurationEphemeralBlockDevice,
        Map<String, dynamic>>(ephemeralBlockDevices, (value) => value.toMap());
    map['iamInstanceProfile'] = iamInstanceProfile;
    map['id'] = id;
    map['imageId'] = imageId;
    map['instanceType'] = instanceType;
    map['keyName'] = keyName;
    map['metadataOptions'] = pulumi.Input.encodeList<
        GetLaunchConfigurationMetadataOption,
        Map<String, dynamic>>(metadataOptions, (value) => value.toMap());
    map['name'] = name;
    map['placementTenancy'] = placementTenancy;
    map['region'] = region;
    map['rootBlockDevices'] = pulumi.Input.encodeList<
        GetLaunchConfigurationRootBlockDevice,
        Map<String, dynamic>>(rootBlockDevices, (value) => value.toMap());
    map['securityGroups'] = securityGroups;
    map['spotPrice'] = spotPrice;
    map['userData'] = userData;
    return map;
  }

  factory GetLaunchConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetLaunchConfigurationResult(
      arn: map['arn'] as String,
      associatePublicIpAddress: map['associatePublicIpAddress'] as bool,
      ebsBlockDevices:
          pulumi.Input.decodeList<GetLaunchConfigurationEbsBlockDevice>(
              map['ebsBlockDevices'],
              (value) => GetLaunchConfigurationEbsBlockDevice.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ebsOptimized: map['ebsOptimized'] as bool,
      enableMonitoring: map['enableMonitoring'] as bool,
      ephemeralBlockDevices:
          pulumi.Input.decodeList<GetLaunchConfigurationEphemeralBlockDevice>(
              map['ephemeralBlockDevices'],
              (value) => GetLaunchConfigurationEphemeralBlockDevice.fromMap(
                  (value as Map).cast<String, dynamic>())),
      iamInstanceProfile: map['iamInstanceProfile'] as String,
      id: map['id'] as String,
      imageId: map['imageId'] as String,
      instanceType: map['instanceType'] as String,
      keyName: map['keyName'] as String,
      metadataOptions:
          pulumi.Input.decodeList<GetLaunchConfigurationMetadataOption>(
              map['metadataOptions'],
              (value) => GetLaunchConfigurationMetadataOption.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      placementTenancy: map['placementTenancy'] as String,
      region: map['region'] as String,
      rootBlockDevices:
          pulumi.Input.decodeList<GetLaunchConfigurationRootBlockDevice>(
              map['rootBlockDevices'],
              (value) => GetLaunchConfigurationRootBlockDevice.fromMap(
                  (value as Map).cast<String, dynamic>())),
      securityGroups: (map['securityGroups'] as List).cast<String>(),
      spotPrice: map['spotPrice'] as String,
      userData: map['userData'] as String,
    );
  }
}
