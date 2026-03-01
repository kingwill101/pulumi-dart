// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spot_fleet_request_launch_specification_ebs_block_device.dart';
import 'spot_fleet_request_launch_specification_ephemeral_block_device.dart';
import 'spot_fleet_request_launch_specification_root_block_device.dart';

class SpotFleetRequestLaunchSpecification {
  final String ami;
  final bool? associatePublicIpAddress;

  /// The availability zone in which to place the request.
  final String? availabilityZone;
  final List<SpotFleetRequestLaunchSpecificationEbsBlockDevice>?
  ebsBlockDevices;
  final bool? ebsOptimized;
  final List<SpotFleetRequestLaunchSpecificationEphemeralBlockDevice>?
  ephemeralBlockDevices;
  final String? iamInstanceProfile;
  final String? iamInstanceProfileArn;

  /// The type of instance to request.
  final String instanceType;
  final String? keyName;
  final bool? monitoring;
  final String? placementGroup;
  final String? placementTenancy;
  final List<SpotFleetRequestLaunchSpecificationRootBlockDevice>?
  rootBlockDevices;

  /// The maximum bid price per unit hour.
  final String? spotPrice;

  /// The subnet in which to launch the requested instance.
  final String? subnetId;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Map<String, String>? tags;
  final String? userData;
  final List<String>? vpcSecurityGroupIds;

  /// The capacity added to the fleet by a fulfilled request.
  final String? weightedCapacity;

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
      'ebsBlockDevices': ?ebsBlockDevices == null
          ? null
          : pulumi.Input.encodeList<
              SpotFleetRequestLaunchSpecificationEbsBlockDevice,
              Map<String, dynamic>
            >(ebsBlockDevices!, (value) => value.toMap()),
      'ebsOptimized': ?ebsOptimized,
      'ephemeralBlockDevices': ?ephemeralBlockDevices == null
          ? null
          : pulumi.Input.encodeList<
              SpotFleetRequestLaunchSpecificationEphemeralBlockDevice,
              Map<String, dynamic>
            >(ephemeralBlockDevices!, (value) => value.toMap()),
      'iamInstanceProfile': ?iamInstanceProfile,
      'iamInstanceProfileArn': ?iamInstanceProfileArn,
      'instanceType': instanceType,
      'keyName': ?keyName,
      'monitoring': ?monitoring,
      'placementGroup': ?placementGroup,
      'placementTenancy': ?placementTenancy,
      'rootBlockDevices': ?rootBlockDevices == null
          ? null
          : pulumi.Input.encodeList<
              SpotFleetRequestLaunchSpecificationRootBlockDevice,
              Map<String, dynamic>
            >(rootBlockDevices!, (value) => value.toMap()),
      'spotPrice': ?spotPrice,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'userData': ?userData,
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
      'weightedCapacity': ?weightedCapacity,
    };
  }

  factory SpotFleetRequestLaunchSpecification.fromMap(
    Map<String, dynamic> map,
  ) {
    return SpotFleetRequestLaunchSpecification(
      ami: map['ami'] as String,
      associatePublicIpAddress: map['associatePublicIpAddress'] == null
          ? null
          : map['associatePublicIpAddress'] as bool,
      availabilityZone: map['availabilityZone'] == null
          ? null
          : map['availabilityZone'] as String,
      ebsBlockDevices: map['ebsBlockDevices'] == null
          ? null
          : pulumi.Input.decodeList<
              SpotFleetRequestLaunchSpecificationEbsBlockDevice
            >(
              map['ebsBlockDevices'],
              (value) =>
                  SpotFleetRequestLaunchSpecificationEbsBlockDevice.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      ebsOptimized: map['ebsOptimized'] == null
          ? null
          : map['ebsOptimized'] as bool,
      ephemeralBlockDevices: map['ephemeralBlockDevices'] == null
          ? null
          : pulumi.Input.decodeList<
              SpotFleetRequestLaunchSpecificationEphemeralBlockDevice
            >(
              map['ephemeralBlockDevices'],
              (value) =>
                  SpotFleetRequestLaunchSpecificationEphemeralBlockDevice.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      iamInstanceProfile: map['iamInstanceProfile'] == null
          ? null
          : map['iamInstanceProfile'] as String,
      iamInstanceProfileArn: map['iamInstanceProfileArn'] == null
          ? null
          : map['iamInstanceProfileArn'] as String,
      instanceType: map['instanceType'] as String,
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
      monitoring: map['monitoring'] == null ? null : map['monitoring'] as bool,
      placementGroup: map['placementGroup'] == null
          ? null
          : map['placementGroup'] as String,
      placementTenancy: map['placementTenancy'] == null
          ? null
          : map['placementTenancy'] as String,
      rootBlockDevices: map['rootBlockDevices'] == null
          ? null
          : pulumi.Input.decodeList<
              SpotFleetRequestLaunchSpecificationRootBlockDevice
            >(
              map['rootBlockDevices'],
              (value) =>
                  SpotFleetRequestLaunchSpecificationRootBlockDevice.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      spotPrice: map['spotPrice'] == null ? null : map['spotPrice'] as String,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      userData: map['userData'] == null ? null : map['userData'] as String,
      vpcSecurityGroupIds: map['vpcSecurityGroupIds'] == null
          ? null
          : (map['vpcSecurityGroupIds'] as List).cast<String>(),
      weightedCapacity: map['weightedCapacity'] == null
          ? null
          : map['weightedCapacity'] as String,
    );
  }
}
