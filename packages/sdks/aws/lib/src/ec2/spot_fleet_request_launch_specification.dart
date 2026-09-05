// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spot_fleet_request_launch_specification_ebs_block_device.dart';
import 'spot_fleet_request_launch_specification_ephemeral_block_device.dart';
import 'spot_fleet_request_launch_specification_root_block_device.dart';

class SpotFleetRequestLaunchSpecification {
  final pulumi.Input<String> ami;
  final pulumi.Input<bool?>? associatePublicIpAddress;
  /// The availability zone in which to place the request.
  final pulumi.Input<String?>? availabilityZone;
  final pulumi.Input<List<SpotFleetRequestLaunchSpecificationEbsBlockDevice>?>? ebsBlockDevices;
  final pulumi.Input<bool?>? ebsOptimized;
  final pulumi.Input<List<SpotFleetRequestLaunchSpecificationEphemeralBlockDevice>?>? ephemeralBlockDevices;
  final pulumi.Input<String?>? iamInstanceProfile;
  final pulumi.Input<String?>? iamInstanceProfileArn;
  /// The type of instance to request.
  final pulumi.Input<String> instanceType;
  final pulumi.Input<String?>? keyName;
  final pulumi.Input<bool?>? monitoring;
  final pulumi.Input<String?>? placementGroup;
  final pulumi.Input<String?>? placementTenancy;
  final pulumi.Input<List<SpotFleetRequestLaunchSpecificationRootBlockDevice>?>? rootBlockDevices;
  /// The maximum bid price per unit hour.
  final pulumi.Input<String?>? spotPrice;
  /// The subnet in which to launch the requested instance.
  final pulumi.Input<String?>? subnetId;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<String?>? userData;
  final pulumi.Input<List<String>?>? vpcSecurityGroupIds;
  /// The capacity added to the fleet by a fulfilled request.
  final pulumi.Input<String?>? weightedCapacity;

  /// Creates a new [SpotFleetRequestLaunchSpecification].
  /// [ami] Required.
  /// [associatePublicIpAddress] Optional.
  /// [availabilityZone] The availability zone in which to place the request.
  /// [ebsBlockDevices] Optional.
  /// [ebsOptimized] Optional.
  /// [ephemeralBlockDevices] Optional.
  /// [iamInstanceProfile] Optional.
  /// [iamInstanceProfileArn] Optional.
  /// [instanceType] The type of instance to request.
  /// [keyName] Optional.
  /// [monitoring] Optional.
  /// [placementGroup] Optional.
  /// [placementTenancy] Optional.
  /// [rootBlockDevices] Optional.
  /// [spotPrice] The maximum bid price per unit hour.
  /// [subnetId] The subnet in which to launch the requested instance.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [userData] Optional.
  /// [vpcSecurityGroupIds] Optional.
  /// [weightedCapacity] The capacity added to the fleet by a fulfilled request.
  const SpotFleetRequestLaunchSpecification({
    required this.ami,
    this.associatePublicIpAddress,
    this.availabilityZone,
    this.ebsBlockDevices,
    this.ebsOptimized,
    this.ephemeralBlockDevices,
    this.iamInstanceProfile,
    this.iamInstanceProfileArn,
    required this.instanceType,
    this.keyName,
    this.monitoring,
    this.placementGroup,
    this.placementTenancy,
    this.rootBlockDevices,
    this.spotPrice,
    this.subnetId,
    this.tags,
    this.userData,
    this.vpcSecurityGroupIds,
    this.weightedCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ami': ami,
      'associatePublicIpAddress': ?associatePublicIpAddress,
      'availabilityZone': ?availabilityZone,
      'ebsBlockDevices': ?pulumi.Input.mapOptionalInputValue<List<SpotFleetRequestLaunchSpecificationEbsBlockDevice>, List<Map<String, dynamic>>>(ebsBlockDevices, (value) => pulumi.Input.encodeList<SpotFleetRequestLaunchSpecificationEbsBlockDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ebsOptimized': ?ebsOptimized,
      'ephemeralBlockDevices': ?pulumi.Input.mapOptionalInputValue<List<SpotFleetRequestLaunchSpecificationEphemeralBlockDevice>, List<Map<String, dynamic>>>(ephemeralBlockDevices, (value) => pulumi.Input.encodeList<SpotFleetRequestLaunchSpecificationEphemeralBlockDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'iamInstanceProfile': ?iamInstanceProfile,
      'iamInstanceProfileArn': ?iamInstanceProfileArn,
      'instanceType': instanceType,
      'keyName': ?keyName,
      'monitoring': ?monitoring,
      'placementGroup': ?placementGroup,
      'placementTenancy': ?placementTenancy,
      'rootBlockDevices': ?pulumi.Input.mapOptionalInputValue<List<SpotFleetRequestLaunchSpecificationRootBlockDevice>, List<Map<String, dynamic>>>(rootBlockDevices, (value) => pulumi.Input.encodeList<SpotFleetRequestLaunchSpecificationRootBlockDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'spotPrice': ?spotPrice,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'userData': ?userData,
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
      'weightedCapacity': ?weightedCapacity,
    };
  }

  factory SpotFleetRequestLaunchSpecification.fromMap(Map<String, dynamic> map) {
    return SpotFleetRequestLaunchSpecification(
      ami: pulumi.Input.fromValue(map['ami'] as String),
      associatePublicIpAddress: (() { final guardedValue = map['associatePublicIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ebsBlockDevices: (() { final guardedValue = map['ebsBlockDevices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SpotFleetRequestLaunchSpecificationEbsBlockDevice>(guardedValue, (value) => SpotFleetRequestLaunchSpecificationEbsBlockDevice.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ebsOptimized: (() { final guardedValue = map['ebsOptimized']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ephemeralBlockDevices: (() { final guardedValue = map['ephemeralBlockDevices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SpotFleetRequestLaunchSpecificationEphemeralBlockDevice>(guardedValue, (value) => SpotFleetRequestLaunchSpecificationEphemeralBlockDevice.fromMap((value as Map).cast<String, dynamic>()))); })(),
      iamInstanceProfile: (() { final guardedValue = map['iamInstanceProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iamInstanceProfileArn: (() { final guardedValue = map['iamInstanceProfileArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitoring: (() { final guardedValue = map['monitoring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      placementGroup: (() { final guardedValue = map['placementGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      placementTenancy: (() { final guardedValue = map['placementTenancy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootBlockDevices: (() { final guardedValue = map['rootBlockDevices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SpotFleetRequestLaunchSpecificationRootBlockDevice>(guardedValue, (value) => SpotFleetRequestLaunchSpecificationRootBlockDevice.fromMap((value as Map).cast<String, dynamic>()))); })(),
      spotPrice: (() { final guardedValue = map['spotPrice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userData: (() { final guardedValue = map['userData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcSecurityGroupIds: (() { final guardedValue = map['vpcSecurityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      weightedCapacity: (() { final guardedValue = map['weightedCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
