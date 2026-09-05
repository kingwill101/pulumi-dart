// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_launch_configuration_ebs_block_device.dart';
import 'get_launch_configuration_ephemeral_block_device.dart';
import 'get_launch_configuration_metadata_option.dart';
import 'get_launch_configuration_root_block_device.dart';

/// Result data returned by getLaunchConfiguration.
class GetLaunchConfigurationResult {
  /// ARN of the launch configuration.
  final String? arn;
  /// Whether a Public IP address is associated with the instance.
  final bool? associatePublicIpAddress;
  /// EBS Block Devices attached to the instance.
  final List<GetLaunchConfigurationEbsBlockDevice>? ebsBlockDevices;
  /// Whether the launched EC2 instance will be EBS-optimized.
  final bool? ebsOptimized;
  /// Whether Detailed Monitoring is Enabled.
  final bool? enableMonitoring;
  /// The Ephemeral volumes on the instance.
  final List<GetLaunchConfigurationEphemeralBlockDevice>? ephemeralBlockDevices;
  /// The IAM Instance Profile to associate with launched instances.
  final String? iamInstanceProfile;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// EC2 Image ID of the instance.
  final String? imageId;
  /// Instance Type of the instance to launch.
  final String? instanceType;
  /// Key Name that should be used for the instance.
  final String? keyName;
  /// Metadata options for the instance.
  final List<GetLaunchConfigurationMetadataOption>? metadataOptions;
  /// Name of the launch configuration.
  final String? name;
  /// Tenancy of the instance.
  final String? placementTenancy;
  final String? region;
  /// Root Block Device of the instance.
  final List<GetLaunchConfigurationRootBlockDevice>? rootBlockDevices;
  /// List of associated Security Group IDS.
  final List<String>? securityGroups;
  /// Price to use for reserving Spot instances.
  final String? spotPrice;
  /// User Data of the instance.
  final String? userData;

  /// Creates a new [GetLaunchConfigurationResult].
  /// [arn] ARN of the launch configuration.
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
  /// [region] Optional.
  /// [rootBlockDevices] Root Block Device of the instance.
  /// [securityGroups] List of associated Security Group IDS.
  /// [spotPrice] Price to use for reserving Spot instances.
  /// [userData] User Data of the instance.
  const GetLaunchConfigurationResult({
    this.arn,
    this.associatePublicIpAddress,
    this.ebsBlockDevices,
    this.ebsOptimized,
    this.enableMonitoring,
    this.ephemeralBlockDevices,
    this.iamInstanceProfile,
    this.id,
    this.imageId,
    this.instanceType,
    this.keyName,
    this.metadataOptions,
    this.name,
    this.placementTenancy,
    this.region,
    this.rootBlockDevices,
    this.securityGroups,
    this.spotPrice,
    this.userData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'associatePublicIpAddress': ?associatePublicIpAddress,
      'ebsBlockDevices': ?(() { final guardedValue = ebsBlockDevices; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLaunchConfigurationEbsBlockDevice, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ebsOptimized': ?ebsOptimized,
      'enableMonitoring': ?enableMonitoring,
      'ephemeralBlockDevices': ?(() { final guardedValue = ephemeralBlockDevices; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLaunchConfigurationEphemeralBlockDevice, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'iamInstanceProfile': ?iamInstanceProfile,
      'id': ?id,
      'imageId': ?imageId,
      'instanceType': ?instanceType,
      'keyName': ?keyName,
      'metadataOptions': ?(() { final guardedValue = metadataOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLaunchConfigurationMetadataOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'placementTenancy': ?placementTenancy,
      'region': ?region,
      'rootBlockDevices': ?(() { final guardedValue = rootBlockDevices; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLaunchConfigurationRootBlockDevice, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'securityGroups': ?securityGroups,
      'spotPrice': ?spotPrice,
      'userData': ?userData,
    };
  }

  factory GetLaunchConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetLaunchConfigurationResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      associatePublicIpAddress: (() { final guardedValue = map['associatePublicIpAddress']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      ebsBlockDevices: (() { final guardedValue = map['ebsBlockDevices']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLaunchConfigurationEbsBlockDevice>(guardedValue, (value) => GetLaunchConfigurationEbsBlockDevice.fromMap((value as Map).cast<String, dynamic>())); })(),
      ebsOptimized: (() { final guardedValue = map['ebsOptimized']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableMonitoring: (() { final guardedValue = map['enableMonitoring']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      ephemeralBlockDevices: (() { final guardedValue = map['ephemeralBlockDevices']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLaunchConfigurationEphemeralBlockDevice>(guardedValue, (value) => GetLaunchConfigurationEphemeralBlockDevice.fromMap((value as Map).cast<String, dynamic>())); })(),
      iamInstanceProfile: (() { final guardedValue = map['iamInstanceProfile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadataOptions: (() { final guardedValue = map['metadataOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLaunchConfigurationMetadataOption>(guardedValue, (value) => GetLaunchConfigurationMetadataOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      placementTenancy: (() { final guardedValue = map['placementTenancy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rootBlockDevices: (() { final guardedValue = map['rootBlockDevices']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLaunchConfigurationRootBlockDevice>(guardedValue, (value) => GetLaunchConfigurationRootBlockDevice.fromMap((value as Map).cast<String, dynamic>())); })(),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      spotPrice: (() { final guardedValue = map['spotPrice']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userData: (() { final guardedValue = map['userData']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
