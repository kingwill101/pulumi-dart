// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spot_fleet_request_launch_specification_ebs_block_device.dart';
import 'spot_fleet_request_launch_specification_ephemeral_block_device.dart';
import 'spot_fleet_request_launch_specification_root_block_device.dart';

class SpotFleetRequestLaunchSpecification {
  final pulumi.Input<String> ami;
  final pulumi.Input<bool>? associatePublicIpAddress;
  /// The availability zone in which to place the request.
  final pulumi.Input<String>? availabilityZone;
  final pulumi.Input<List<SpotFleetRequestLaunchSpecificationEbsBlockDevice>>? ebsBlockDevices;
  final pulumi.Input<bool>? ebsOptimized;
  final pulumi.Input<List<SpotFleetRequestLaunchSpecificationEphemeralBlockDevice>>? ephemeralBlockDevices;
  final pulumi.Input<String>? iamInstanceProfile;
  final pulumi.Input<String>? iamInstanceProfileArn;
  /// The type of instance to request.
  final pulumi.Input<String> instanceType;
  final pulumi.Input<String>? keyName;
  final pulumi.Input<bool>? monitoring;
  final pulumi.Input<String>? placementGroup;
  final pulumi.Input<String>? placementTenancy;
  final pulumi.Input<List<SpotFleetRequestLaunchSpecificationRootBlockDevice>>? rootBlockDevices;
  /// The maximum bid price per unit hour.
  final pulumi.Input<String>? spotPrice;
  /// The subnet in which to launch the requested instance.
  final pulumi.Input<String>? subnetId;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<String>? userData;
  final pulumi.Input<List<String>>? vpcSecurityGroupIds;
  /// The capacity added to the fleet by a fulfilled request.
  final pulumi.Input<String>? weightedCapacity;

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
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [userData] Optional.
  /// [vpcSecurityGroupIds] Optional.
  /// [weightedCapacity] The capacity added to the fleet by a fulfilled request.
  SpotFleetRequestLaunchSpecification({
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
      ami: (map['ami'] as String).input(),
      associatePublicIpAddress: map['associatePublicIpAddress'] == null ? null : (map['associatePublicIpAddress'] as bool).input(),
      availabilityZone: map['availabilityZone'] == null ? null : (map['availabilityZone'] as String).input(),
      ebsBlockDevices: map['ebsBlockDevices'] == null ? null : (pulumi.Input.decodeList<SpotFleetRequestLaunchSpecificationEbsBlockDevice>(map['ebsBlockDevices'], (value) => SpotFleetRequestLaunchSpecificationEbsBlockDevice.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ebsOptimized: map['ebsOptimized'] == null ? null : (map['ebsOptimized'] as bool).input(),
      ephemeralBlockDevices: map['ephemeralBlockDevices'] == null ? null : (pulumi.Input.decodeList<SpotFleetRequestLaunchSpecificationEphemeralBlockDevice>(map['ephemeralBlockDevices'], (value) => SpotFleetRequestLaunchSpecificationEphemeralBlockDevice.fromMap((value as Map).cast<String, dynamic>()))).input(),
      iamInstanceProfile: map['iamInstanceProfile'] == null ? null : (map['iamInstanceProfile'] as String).input(),
      iamInstanceProfileArn: map['iamInstanceProfileArn'] == null ? null : (map['iamInstanceProfileArn'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      keyName: map['keyName'] == null ? null : (map['keyName'] as String).input(),
      monitoring: map['monitoring'] == null ? null : (map['monitoring'] as bool).input(),
      placementGroup: map['placementGroup'] == null ? null : (map['placementGroup'] as String).input(),
      placementTenancy: map['placementTenancy'] == null ? null : (map['placementTenancy'] as String).input(),
      rootBlockDevices: map['rootBlockDevices'] == null ? null : (pulumi.Input.decodeList<SpotFleetRequestLaunchSpecificationRootBlockDevice>(map['rootBlockDevices'], (value) => SpotFleetRequestLaunchSpecificationRootBlockDevice.fromMap((value as Map).cast<String, dynamic>()))).input(),
      spotPrice: map['spotPrice'] == null ? null : (map['spotPrice'] as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      userData: map['userData'] == null ? null : (map['userData'] as String).input(),
      vpcSecurityGroupIds: map['vpcSecurityGroupIds'] == null ? null : ((map['vpcSecurityGroupIds'] as List).cast<String>()).input(),
      weightedCapacity: map['weightedCapacity'] == null ? null : (map['weightedCapacity'] as String).input(),
    );
  }
}

